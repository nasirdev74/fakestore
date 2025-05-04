// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchItems,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int productId) removeItem,
    required TResult Function(int productId, int quantity, CartItem item)
        updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchItems,
    TResult? Function(CartItem item)? addItem,
    TResult? Function(int productId)? removeItem,
    TResult? Function(int productId, int quantity, CartItem item)?
        updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchItems,
    TResult Function(CartItem item)? addItem,
    TResult Function(int productId)? removeItem,
    TResult Function(int productId, int quantity, CartItem item)?
        updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartFetchItems value) fetchItems,
    required TResult Function(CartAddItem value) addItem,
    required TResult Function(CartRemoveItem value) removeItem,
    required TResult Function(CartUpdateQuantity value) updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartFetchItems value)? fetchItems,
    TResult? Function(CartAddItem value)? addItem,
    TResult? Function(CartRemoveItem value)? removeItem,
    TResult? Function(CartUpdateQuantity value)? updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartFetchItems value)? fetchItems,
    TResult Function(CartAddItem value)? addItem,
    TResult Function(CartRemoveItem value)? removeItem,
    TResult Function(CartUpdateQuantity value)? updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartFetchItemsImplCopyWith<$Res> {
  factory _$$CartFetchItemsImplCopyWith(_$CartFetchItemsImpl value,
          $Res Function(_$CartFetchItemsImpl) then) =
      __$$CartFetchItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartFetchItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartFetchItemsImpl>
    implements _$$CartFetchItemsImplCopyWith<$Res> {
  __$$CartFetchItemsImplCopyWithImpl(
      _$CartFetchItemsImpl _value, $Res Function(_$CartFetchItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartFetchItemsImpl implements CartFetchItems {
  const _$CartFetchItemsImpl();

  @override
  String toString() {
    return 'CartEvent.fetchItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartFetchItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchItems,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int productId) removeItem,
    required TResult Function(int productId, int quantity, CartItem item)
        updateQuantity,
  }) {
    return fetchItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchItems,
    TResult? Function(CartItem item)? addItem,
    TResult? Function(int productId)? removeItem,
    TResult? Function(int productId, int quantity, CartItem item)?
        updateQuantity,
  }) {
    return fetchItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchItems,
    TResult Function(CartItem item)? addItem,
    TResult Function(int productId)? removeItem,
    TResult Function(int productId, int quantity, CartItem item)?
        updateQuantity,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartFetchItems value) fetchItems,
    required TResult Function(CartAddItem value) addItem,
    required TResult Function(CartRemoveItem value) removeItem,
    required TResult Function(CartUpdateQuantity value) updateQuantity,
  }) {
    return fetchItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartFetchItems value)? fetchItems,
    TResult? Function(CartAddItem value)? addItem,
    TResult? Function(CartRemoveItem value)? removeItem,
    TResult? Function(CartUpdateQuantity value)? updateQuantity,
  }) {
    return fetchItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartFetchItems value)? fetchItems,
    TResult Function(CartAddItem value)? addItem,
    TResult Function(CartRemoveItem value)? removeItem,
    TResult Function(CartUpdateQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (fetchItems != null) {
      return fetchItems(this);
    }
    return orElse();
  }
}

abstract class CartFetchItems implements CartEvent {
  const factory CartFetchItems() = _$CartFetchItemsImpl;
}

/// @nodoc
abstract class _$$CartAddItemImplCopyWith<$Res> {
  factory _$$CartAddItemImplCopyWith(
          _$CartAddItemImpl value, $Res Function(_$CartAddItemImpl) then) =
      __$$CartAddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem item});
}

/// @nodoc
class __$$CartAddItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartAddItemImpl>
    implements _$$CartAddItemImplCopyWith<$Res> {
  __$$CartAddItemImplCopyWithImpl(
      _$CartAddItemImpl _value, $Res Function(_$CartAddItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CartAddItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }
}

/// @nodoc

class _$CartAddItemImpl implements CartAddItem {
  const _$CartAddItemImpl({required this.item});

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartAddItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartAddItemImplCopyWith<_$CartAddItemImpl> get copyWith =>
      __$$CartAddItemImplCopyWithImpl<_$CartAddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchItems,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int productId) removeItem,
    required TResult Function(int productId, int quantity, CartItem item)
        updateQuantity,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchItems,
    TResult? Function(CartItem item)? addItem,
    TResult? Function(int productId)? removeItem,
    TResult? Function(int productId, int quantity, CartItem item)?
        updateQuantity,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchItems,
    TResult Function(CartItem item)? addItem,
    TResult Function(int productId)? removeItem,
    TResult Function(int productId, int quantity, CartItem item)?
        updateQuantity,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartFetchItems value) fetchItems,
    required TResult Function(CartAddItem value) addItem,
    required TResult Function(CartRemoveItem value) removeItem,
    required TResult Function(CartUpdateQuantity value) updateQuantity,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartFetchItems value)? fetchItems,
    TResult? Function(CartAddItem value)? addItem,
    TResult? Function(CartRemoveItem value)? removeItem,
    TResult? Function(CartUpdateQuantity value)? updateQuantity,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartFetchItems value)? fetchItems,
    TResult Function(CartAddItem value)? addItem,
    TResult Function(CartRemoveItem value)? removeItem,
    TResult Function(CartUpdateQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class CartAddItem implements CartEvent {
  const factory CartAddItem({required final CartItem item}) = _$CartAddItemImpl;

  CartItem get item;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartAddItemImplCopyWith<_$CartAddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartRemoveItemImplCopyWith<$Res> {
  factory _$$CartRemoveItemImplCopyWith(_$CartRemoveItemImpl value,
          $Res Function(_$CartRemoveItemImpl) then) =
      __$$CartRemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$CartRemoveItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartRemoveItemImpl>
    implements _$$CartRemoveItemImplCopyWith<$Res> {
  __$$CartRemoveItemImplCopyWithImpl(
      _$CartRemoveItemImpl _value, $Res Function(_$CartRemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$CartRemoveItemImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartRemoveItemImpl implements CartRemoveItem {
  const _$CartRemoveItemImpl({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.removeItem(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartRemoveItemImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartRemoveItemImplCopyWith<_$CartRemoveItemImpl> get copyWith =>
      __$$CartRemoveItemImplCopyWithImpl<_$CartRemoveItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchItems,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int productId) removeItem,
    required TResult Function(int productId, int quantity, CartItem item)
        updateQuantity,
  }) {
    return removeItem(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchItems,
    TResult? Function(CartItem item)? addItem,
    TResult? Function(int productId)? removeItem,
    TResult? Function(int productId, int quantity, CartItem item)?
        updateQuantity,
  }) {
    return removeItem?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchItems,
    TResult Function(CartItem item)? addItem,
    TResult Function(int productId)? removeItem,
    TResult Function(int productId, int quantity, CartItem item)?
        updateQuantity,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartFetchItems value) fetchItems,
    required TResult Function(CartAddItem value) addItem,
    required TResult Function(CartRemoveItem value) removeItem,
    required TResult Function(CartUpdateQuantity value) updateQuantity,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartFetchItems value)? fetchItems,
    TResult? Function(CartAddItem value)? addItem,
    TResult? Function(CartRemoveItem value)? removeItem,
    TResult? Function(CartUpdateQuantity value)? updateQuantity,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartFetchItems value)? fetchItems,
    TResult Function(CartAddItem value)? addItem,
    TResult Function(CartRemoveItem value)? removeItem,
    TResult Function(CartUpdateQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class CartRemoveItem implements CartEvent {
  const factory CartRemoveItem({required final int productId}) =
      _$CartRemoveItemImpl;

  int get productId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartRemoveItemImplCopyWith<_$CartRemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdateQuantityImplCopyWith<$Res> {
  factory _$$CartUpdateQuantityImplCopyWith(_$CartUpdateQuantityImpl value,
          $Res Function(_$CartUpdateQuantityImpl) then) =
      __$$CartUpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, int quantity, CartItem item});
}

/// @nodoc
class __$$CartUpdateQuantityImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartUpdateQuantityImpl>
    implements _$$CartUpdateQuantityImplCopyWith<$Res> {
  __$$CartUpdateQuantityImplCopyWithImpl(_$CartUpdateQuantityImpl _value,
      $Res Function(_$CartUpdateQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? item = null,
  }) {
    return _then(_$CartUpdateQuantityImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }
}

/// @nodoc

class _$CartUpdateQuantityImpl implements CartUpdateQuantity {
  const _$CartUpdateQuantityImpl(
      {required this.productId, required this.quantity, required this.item});

  @override
  final int productId;
  @override
  final int quantity;
  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.updateQuantity(productId: $productId, quantity: $quantity, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdateQuantityImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, item);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdateQuantityImplCopyWith<_$CartUpdateQuantityImpl> get copyWith =>
      __$$CartUpdateQuantityImplCopyWithImpl<_$CartUpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchItems,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int productId) removeItem,
    required TResult Function(int productId, int quantity, CartItem item)
        updateQuantity,
  }) {
    return updateQuantity(productId, quantity, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchItems,
    TResult? Function(CartItem item)? addItem,
    TResult? Function(int productId)? removeItem,
    TResult? Function(int productId, int quantity, CartItem item)?
        updateQuantity,
  }) {
    return updateQuantity?.call(productId, quantity, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchItems,
    TResult Function(CartItem item)? addItem,
    TResult Function(int productId)? removeItem,
    TResult Function(int productId, int quantity, CartItem item)?
        updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(productId, quantity, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartFetchItems value) fetchItems,
    required TResult Function(CartAddItem value) addItem,
    required TResult Function(CartRemoveItem value) removeItem,
    required TResult Function(CartUpdateQuantity value) updateQuantity,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartFetchItems value)? fetchItems,
    TResult? Function(CartAddItem value)? addItem,
    TResult? Function(CartRemoveItem value)? removeItem,
    TResult? Function(CartUpdateQuantity value)? updateQuantity,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartFetchItems value)? fetchItems,
    TResult Function(CartAddItem value)? addItem,
    TResult Function(CartRemoveItem value)? removeItem,
    TResult Function(CartUpdateQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class CartUpdateQuantity implements CartEvent {
  const factory CartUpdateQuantity(
      {required final int productId,
      required final int quantity,
      required final CartItem item}) = _$CartUpdateQuantityImpl;

  int get productId;
  int get quantity;
  CartItem get item;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartUpdateQuantityImplCopyWith<_$CartUpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  String? get error => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  List<CartItem> get cartItems => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({String? error, Status status, List<CartItem> cartItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
    Object? cartItems = null,
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
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, Status status, List<CartItem> cartItems});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
    Object? cartItems = null,
  }) {
    return _then(_$CartStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.error,
      this.status = Status.init,
      final List<CartItem> cartItems = const []})
      : _cartItems = cartItems;

  @override
  final String? error;
  @override
  @JsonKey()
  final Status status;
  final List<CartItem> _cartItems;
  @override
  @JsonKey()
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState(error: $error, status: $status, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final String? error,
      final Status status,
      final List<CartItem> cartItems}) = _$CartStateImpl;

  @override
  String? get error;
  @override
  Status get status;
  @override
  List<CartItem> get cartItems;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
