// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListResponseModel _$ProductListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProductListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  CategoryEnum? get categoryEnum => throw _privateConstructorUsedError;

  /// Serializes this ProductListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListResponseModelCopyWith<ProductListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseModelCopyWith<$Res> {
  factory $ProductListResponseModelCopyWith(ProductListResponseModel value,
          $Res Function(ProductListResponseModel) then) =
      _$ProductListResponseModelCopyWithImpl<$Res, ProductListResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image,
      Rating? rating,
      CategoryEnum? categoryEnum});

  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$ProductListResponseModelCopyWithImpl<$Res,
        $Val extends ProductListResponseModel>
    implements $ProductListResponseModelCopyWith<$Res> {
  _$ProductListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
    Object? categoryEnum = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      categoryEnum: freezed == categoryEnum
          ? _value.categoryEnum
          : categoryEnum // ignore: cast_nullable_to_non_nullable
              as CategoryEnum?,
    ) as $Val);
  }

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductListResponseModelImplCopyWith<$Res>
    implements $ProductListResponseModelCopyWith<$Res> {
  factory _$$ProductListResponseModelImplCopyWith(
          _$ProductListResponseModelImpl value,
          $Res Function(_$ProductListResponseModelImpl) then) =
      __$$ProductListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image,
      Rating? rating,
      CategoryEnum? categoryEnum});

  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$ProductListResponseModelImplCopyWithImpl<$Res>
    extends _$ProductListResponseModelCopyWithImpl<$Res,
        _$ProductListResponseModelImpl>
    implements _$$ProductListResponseModelImplCopyWith<$Res> {
  __$$ProductListResponseModelImplCopyWithImpl(
      _$ProductListResponseModelImpl _value,
      $Res Function(_$ProductListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
    Object? categoryEnum = freezed,
  }) {
    return _then(_$ProductListResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      categoryEnum: freezed == categoryEnum
          ? _value.categoryEnum
          : categoryEnum // ignore: cast_nullable_to_non_nullable
              as CategoryEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListResponseModelImpl implements _ProductListResponseModel {
  _$ProductListResponseModelImpl(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating,
      this.categoryEnum});

  factory _$ProductListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? image;
  @override
  final Rating? rating;
  @override
  final CategoryEnum? categoryEnum;

  @override
  String toString() {
    return 'ProductListResponseModel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating, categoryEnum: $categoryEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.categoryEnum, categoryEnum) ||
                other.categoryEnum == categoryEnum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, description,
      category, image, rating, categoryEnum);

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListResponseModelImplCopyWith<_$ProductListResponseModelImpl>
      get copyWith => __$$ProductListResponseModelImplCopyWithImpl<
          _$ProductListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProductListResponseModel implements ProductListResponseModel {
  factory _ProductListResponseModel(
      {final int? id,
      final String? title,
      final double? price,
      final String? description,
      final String? category,
      final String? image,
      final Rating? rating,
      final CategoryEnum? categoryEnum}) = _$ProductListResponseModelImpl;

  factory _ProductListResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductListResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  double? get price;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get image;
  @override
  Rating? get rating;
  @override
  CategoryEnum? get categoryEnum;

  /// Create a copy of ProductListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListResponseModelImplCopyWith<_$ProductListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double? get rate => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  /// Serializes this Rating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double? rate, int? count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? rate, int? count});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_$RatingImpl(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  _$RatingImpl({this.rate, this.count});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final double? rate;
  @override
  final int? count;

  @override
  String toString() {
    return 'Rating(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating({final double? rate, final int? count}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double? get rate;
  @override
  int? get count;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
