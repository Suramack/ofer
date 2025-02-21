import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ofer/util/enum/category_enum.dart';

import '../response_model/product_list/product_list_response_model.dart';
part 'home_state_model.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) CategoryEnum? selectedCatory,
    @Default(false) bool productListLoading,
    @Default([]) List<ProductListResponseModel> productList,
    @Default([]) List<ProductListResponseModel> cartItems,
  }) = _HomeState;
}
