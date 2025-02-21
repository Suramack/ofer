import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/core/model/home/response_model/category_icons/category_icons_response_model.dart';
import 'package:ofer/core/model/home/response_model/product_list/product_list_response_model.dart';
import 'package:ofer/core/model/home/state_model/home_state_model.dart';
import 'package:ofer/src/feature/home/data/service/home_remote_repo.dart';
import 'package:ofer/util/enum/category_enum.dart';

final homeProvider = StateNotifierProvider<HomeNotifierProvider, HomeState>(
    (ref) => HomeNotifierProvider(ref));

class HomeNotifierProvider extends StateNotifier<HomeState> {
  HomeNotifierProvider(this.ref) : super(const HomeState());

  final Ref ref;

  CategoryEnum? get selectedCatory => state.selectedCatory;

  bool get productListLoading => state.productListLoading;

  List<ProductListResponseModel> get cartItems => state.cartItems;

  List<CategoryIcons> categoryIcons = const [
    CategoryIcons(
        categoryEnum: CategoryEnum.womensClothing, icon: Icons.woman_2_rounded),
    CategoryIcons(
        categoryEnum: CategoryEnum.mensClothing, icon: Icons.boy_rounded),
    CategoryIcons(
        categoryEnum: CategoryEnum.jewelery, icon: Icons.animation_outlined),
    CategoryIcons(
        categoryEnum: CategoryEnum.electronics, icon: Icons.computer_rounded),
    CategoryIcons(
        categoryEnum: CategoryEnum.cart, icon: Icons.shopping_bag_outlined),
  ];

  Future<void> getProductList() async {
    state = state.copyWith(productListLoading: true);

    var res = await ref.read(homeRemoteRepoProvider).getProducrs();

    state = state.copyWith(productListLoading: false);

    List<ProductListResponseModel> list = [];

    CategoryEnum? categoryEnum;

    for (var i in res) {
      if (i.category == CategoryEnum.womensClothing.value) {
        categoryEnum = CategoryEnum.womensClothing;
      } else if (i.category == CategoryEnum.mensClothing.value) {
        categoryEnum = CategoryEnum.mensClothing;
      } else if (i.category == CategoryEnum.jewelery.value) {
        categoryEnum = CategoryEnum.jewelery;
      } else if (i.category == CategoryEnum.electronics.value) {
        categoryEnum = CategoryEnum.electronics;
      } else if (i.category == CategoryEnum.cart.value) {
        categoryEnum = CategoryEnum.cart;
      } else {
        categoryEnum = null;
      }
      var t = ProductListResponseModel(
        categoryEnum: categoryEnum,
        category: i.category,
        description: i.description,
        id: i.id,
        image: i.image,
        price: i.price,
        rating: i.rating,
        title: i.title,
      );
      list.add(t);
    }

    state = state.copyWith(productList: [...list]);
  }

  void updateSelectedCategory(CategoryEnum? selectedCatory) {
    state = state.copyWith(selectedCatory: selectedCatory);
  }

  List<ProductListResponseModel> getSelectedProductList() {
    List<ProductListResponseModel> list = [];
    for (var i in (state.productList)) {
      if (i.categoryEnum == selectedCatory) {
        list.add(i);
      }
    }

    if (cartItems.isNotEmpty) {
      list.addAll(cartItems);
    }
    return list;
  }

  void updateCart(ProductListResponseModel model) {
    var list = [...cartItems];

    var tempModel = ProductListResponseModel(
      category: model.category,
      categoryEnum: CategoryEnum.cart,
      description: model.description,
      id: model.id,
      image: model.image,
      price: model.price,
      rating: model.rating,
      title: model.title,
    );

    list.add(tempModel);

    state = state.copyWith(cartItems: list);
  }
}
