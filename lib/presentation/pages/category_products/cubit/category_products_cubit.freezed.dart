// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductsState {
  String? get error => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  /// Create a copy of CategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryProductsStateCopyWith<CategoryProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductsStateCopyWith<$Res> {
  factory $CategoryProductsStateCopyWith(CategoryProductsState value,
          $Res Function(CategoryProductsState) then) =
      _$CategoryProductsStateCopyWithImpl<$Res, CategoryProductsState>;
  @useResult
  $Res call({String? error, Status status, List<Product> products});
}

/// @nodoc
class _$CategoryProductsStateCopyWithImpl<$Res,
        $Val extends CategoryProductsState>
    implements $CategoryProductsStateCopyWith<$Res> {
  _$CategoryProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductsStateImplCopyWith<$Res>
    implements $CategoryProductsStateCopyWith<$Res> {
  factory _$$CategoryProductsStateImplCopyWith(
          _$CategoryProductsStateImpl value,
          $Res Function(_$CategoryProductsStateImpl) then) =
      __$$CategoryProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, Status status, List<Product> products});
}

/// @nodoc
class __$$CategoryProductsStateImplCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res,
        _$CategoryProductsStateImpl>
    implements _$$CategoryProductsStateImplCopyWith<$Res> {
  __$$CategoryProductsStateImplCopyWithImpl(_$CategoryProductsStateImpl _value,
      $Res Function(_$CategoryProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
    Object? products = null,
  }) {
    return _then(_$CategoryProductsStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$CategoryProductsStateImpl implements _CategoryProductsState {
  const _$CategoryProductsStateImpl(
      {this.error,
      this.status = Status.init,
      final List<Product> products = const []})
      : _products = products;

  @override
  final String? error;
  @override
  @JsonKey()
  final Status status;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CategoryProductsState(error: $error, status: $status, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductsStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of CategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductsStateImplCopyWith<_$CategoryProductsStateImpl>
      get copyWith => __$$CategoryProductsStateImplCopyWithImpl<
          _$CategoryProductsStateImpl>(this, _$identity);
}

abstract class _CategoryProductsState implements CategoryProductsState {
  const factory _CategoryProductsState(
      {final String? error,
      final Status status,
      final List<Product> products}) = _$CategoryProductsStateImpl;

  @override
  String? get error;
  @override
  Status get status;
  @override
  List<Product> get products;

  /// Create a copy of CategoryProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductsStateImplCopyWith<_$CategoryProductsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
