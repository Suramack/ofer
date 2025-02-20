// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListResponseModelImpl _$$ProductListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      categoryEnum:
          $enumDecodeNullable(_$CategoryEnumEnumMap, json['categoryEnum']),
    );

Map<String, dynamic> _$$ProductListResponseModelImplToJson(
        _$ProductListResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
      'categoryEnum': _$CategoryEnumEnumMap[instance.categoryEnum],
    };

const _$CategoryEnumEnumMap = {
  CategoryEnum.mensClothing: 'mensClothing',
  CategoryEnum.womensClothing: 'womensClothing',
  CategoryEnum.jewelery: 'jewelery',
  CategoryEnum.electronics: 'electronics',
};

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      rate: (json['rate'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
