// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// @nodoc


class FetchCategories implements CategoryEvent {
  const FetchCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.fetchCategories()';
}


}




/// @nodoc


class FetchCategoryProducts implements CategoryEvent {
  const FetchCategoryProducts(this.category, {this.sort});
  

 final  String category;
 final  String? sort;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCategoryProductsCopyWith<FetchCategoryProducts> get copyWith => _$FetchCategoryProductsCopyWithImpl<FetchCategoryProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCategoryProducts&&(identical(other.category, category) || other.category == category)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,category,sort);

@override
String toString() {
  return 'CategoryEvent.fetchCategoryProducts(category: $category, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $FetchCategoryProductsCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $FetchCategoryProductsCopyWith(FetchCategoryProducts value, $Res Function(FetchCategoryProducts) _then) = _$FetchCategoryProductsCopyWithImpl;
@useResult
$Res call({
 String category, String? sort
});




}
/// @nodoc
class _$FetchCategoryProductsCopyWithImpl<$Res>
    implements $FetchCategoryProductsCopyWith<$Res> {
  _$FetchCategoryProductsCopyWithImpl(this._self, this._then);

  final FetchCategoryProducts _self;
  final $Res Function(FetchCategoryProducts) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? sort = freezed,}) {
  return _then(FetchCategoryProducts(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
