// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  CategoryEnum? get selectedCatory => throw _privateConstructorUsedError;
  bool get productListLoading => throw _privateConstructorUsedError;
  double get sideBarWidth => throw _privateConstructorUsedError;
  List<ProductListResponseModel> get productList =>
      throw _privateConstructorUsedError;
  List<ProductListResponseModel> get cartItems =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {CategoryEnum? selectedCatory,
      bool productListLoading,
      double sideBarWidth,
      List<ProductListResponseModel> productList,
      List<ProductListResponseModel> cartItems});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCatory = freezed,
    Object? productListLoading = null,
    Object? sideBarWidth = null,
    Object? productList = null,
    Object? cartItems = null,
  }) {
    return _then(_value.copyWith(
      selectedCatory: freezed == selectedCatory
          ? _value.selectedCatory
          : selectedCatory // ignore: cast_nullable_to_non_nullable
              as CategoryEnum?,
      productListLoading: null == productListLoading
          ? _value.productListLoading
          : productListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sideBarWidth: null == sideBarWidth
          ? _value.sideBarWidth
          : sideBarWidth // ignore: cast_nullable_to_non_nullable
              as double,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductListResponseModel>,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<ProductListResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryEnum? selectedCatory,
      bool productListLoading,
      double sideBarWidth,
      List<ProductListResponseModel> productList,
      List<ProductListResponseModel> cartItems});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCatory = freezed,
    Object? productListLoading = null,
    Object? sideBarWidth = null,
    Object? productList = null,
    Object? cartItems = null,
  }) {
    return _then(_$HomeStateImpl(
      selectedCatory: freezed == selectedCatory
          ? _value.selectedCatory
          : selectedCatory // ignore: cast_nullable_to_non_nullable
              as CategoryEnum?,
      productListLoading: null == productListLoading
          ? _value.productListLoading
          : productListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sideBarWidth: null == sideBarWidth
          ? _value.sideBarWidth
          : sideBarWidth // ignore: cast_nullable_to_non_nullable
              as double,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductListResponseModel>,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<ProductListResponseModel>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.selectedCatory = null,
      this.productListLoading = false,
      this.sideBarWidth = 50,
      final List<ProductListResponseModel> productList = const [],
      final List<ProductListResponseModel> cartItems = const []})
      : _productList = productList,
        _cartItems = cartItems;

  @override
  @JsonKey()
  final CategoryEnum? selectedCatory;
  @override
  @JsonKey()
  final bool productListLoading;
  @override
  @JsonKey()
  final double sideBarWidth;
  final List<ProductListResponseModel> _productList;
  @override
  @JsonKey()
  List<ProductListResponseModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  final List<ProductListResponseModel> _cartItems;
  @override
  @JsonKey()
  List<ProductListResponseModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'HomeState(selectedCatory: $selectedCatory, productListLoading: $productListLoading, sideBarWidth: $sideBarWidth, productList: $productList, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.selectedCatory, selectedCatory) ||
                other.selectedCatory == selectedCatory) &&
            (identical(other.productListLoading, productListLoading) ||
                other.productListLoading == productListLoading) &&
            (identical(other.sideBarWidth, sideBarWidth) ||
                other.sideBarWidth == sideBarWidth) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCatory,
      productListLoading,
      sideBarWidth,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final CategoryEnum? selectedCatory,
      final bool productListLoading,
      final double sideBarWidth,
      final List<ProductListResponseModel> productList,
      final List<ProductListResponseModel> cartItems}) = _$HomeStateImpl;

  @override
  CategoryEnum? get selectedCatory;
  @override
  bool get productListLoading;
  @override
  double get sideBarWidth;
  @override
  List<ProductListResponseModel> get productList;
  @override
  List<ProductListResponseModel> get cartItems;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
