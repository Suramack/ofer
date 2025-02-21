import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/design_system/label/label.dart';
import 'package:ofer/design_system/loader/brand_loader.dart';
import 'package:ofer/design_system/widget/brand_sized_box.dart';
import 'package:ofer/src/feature/home/presentation/widget/product_card_widget.dart';
import 'package:ofer/src/theme/colors.dart';
import 'package:ofer/util/enum/category_enum.dart';
import '../../../../../design_system/style/brand_space.dart';
import '../../../../../design_system/widget/brand_text.dart';
import '../provider/home_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late HomeNotifierProvider provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    await provider.getProductList();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeProvider);
    provider = ref.read(homeProvider.notifier);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: (provider.productListLoading)
            ? Center(child: BrandCircularProgressWidget())
            : Row(
                children: [
                  AnimatedContainer(
                    color: AppColor.primary,
                    height: MediaQuery.sizeOf(context).height,
                    width: 75,
                    duration: const Duration(milliseconds: 350),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: provider.categoryIcons.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            provider.updateSelectedCategory(
                              provider.categoryIcons[index].categoryEnum,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 26),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: AppColor.black.withAlpha(56),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    provider.categoryIcons[index].icon,
                                    color: AppColor.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      provider.selectedCatory ==
                                              provider.categoryIcons[index]
                                                  .categoryEnum
                                          ? Container(
                                              width: 5,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                  color: AppColor.secondary),
                                            )
                                          : const SizedBox.shrink(),
                                      if (CategoryEnum.cart ==
                                              provider.categoryIcons[index]
                                                  .categoryEnum &&
                                          provider.cartItems.isNotEmpty)
                                        BrandText.white(
                                            data: provider.cartItems.length
                                                .toString())
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        BrandVSpace(
                          height: BrandSpace.gap40,
                        ),
                        BrandText.primary(
                          data:
                              provider.selectedCatory?.display ?? Strings.ofer,
                        ),
                        if (provider.getSelectedProductList().isNotEmpty)
                          Expanded(
                            child: ListView.builder(
                              itemCount:
                                  provider.getSelectedProductList().length,
                              itemBuilder: (context, index) =>
                                  ProductCardWidget(
                                enableAddToCart: provider.selectedCatory !=
                                    CategoryEnum.cart,
                                title: provider
                                    .getSelectedProductList()[index]
                                    .title,
                                image: provider
                                    .getSelectedProductList()[index]
                                    .image,
                                price: provider
                                    .getSelectedProductList()[index]
                                    .price
                                    ?.toString(),
                                rating: provider
                                    .getSelectedProductList()[index]
                                    .rating
                                    ?.rate
                                    ?.toString(),
                                addToCart: () {
                                  provider.updateCart(
                                      provider.getSelectedProductList()[index]);
                                },
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
