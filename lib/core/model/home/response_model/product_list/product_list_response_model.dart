import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ofer/util/enum/category_enum.dart';
part 'product_list_response_model.freezed.dart';
part 'product_list_response_model.g.dart';

@freezed
class ProductListResponseModel with _$ProductListResponseModel {
  factory ProductListResponseModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
    CategoryEnum? categoryEnum,
  }) = _ProductListResponseModel;

  factory ProductListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseModelFromJson(json);
}

@freezed
class Rating with _$Rating {
  factory Rating({
    double? rate,
    int? count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
