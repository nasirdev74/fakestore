// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// @nodoc


class FetchProducts implements ProductEvent {
  const FetchProducts({this.limit, this.sort});
  

 final  int? limit;
 final  String? sort;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProductsCopyWith<FetchProducts> get copyWith => _$FetchProductsCopyWithImpl<FetchProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProducts&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,limit,sort);

@override
String toString() {
  return 'ProductEvent.fetchProducts(limit: $limit, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $FetchProductsCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $FetchProductsCopyWith(FetchProducts value, $Res Function(FetchProducts) _then) = _$FetchProductsCopyWithImpl;
@useResult
$Res call({
 int? limit, String? sort
});




}
/// @nodoc
class _$FetchProductsCopyWithImpl<$Res>
    implements $FetchProductsCopyWith<$Res> {
  _$FetchProductsCopyWithImpl(this._self, this._then);

  final FetchProducts _self;
  final $Res Function(FetchProducts) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = freezed,Object? sort = freezed,}) {
  return _then(FetchProducts(
limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class FetchProductDetails implements ProductEvent {
  const FetchProductDetails(this.id);
  

 final  int id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProductDetailsCopyWith<FetchProductDetails> get copyWith => _$FetchProductDetailsCopyWithImpl<FetchProductDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProductDetails&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.fetchProductDetails(id: $id)';
}


}

/// @nodoc
abstract mixin class $FetchProductDetailsCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $FetchProductDetailsCopyWith(FetchProductDetails value, $Res Function(FetchProductDetails) _then) = _$FetchProductDetailsCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$FetchProductDetailsCopyWithImpl<$Res>
    implements $FetchProductDetailsCopyWith<$Res> {
  _$FetchProductDetailsCopyWithImpl(this._self, this._then);

  final FetchProductDetails _self;
  final $Res Function(FetchProductDetails) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(FetchProductDetails(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
