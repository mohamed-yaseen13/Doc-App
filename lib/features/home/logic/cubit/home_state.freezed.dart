// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// @nodoc


class _HomeInitial<T> implements HomeState<T> {
  const _HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.homeInitial()';
}


}




/// @nodoc


class HomeLoading<T> implements HomeState<T> {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.homeLoading()';
}


}




/// @nodoc


class HomeSuccess<T> implements HomeState<T> {
  const HomeSuccess(this.data);
  

 final  T data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSuccessCopyWith<T, HomeSuccess<T>> get copyWith => _$HomeSuccessCopyWithImpl<T, HomeSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HomeState<$T>.homeSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeSuccessCopyWith(HomeSuccess<T> value, $Res Function(HomeSuccess<T>) _then) = _$HomeSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$HomeSuccessCopyWithImpl<T,$Res>
    implements $HomeSuccessCopyWith<T, $Res> {
  _$HomeSuccessCopyWithImpl(this._self, this._then);

  final HomeSuccess<T> _self;
  final $Res Function(HomeSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HomeSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class HomeFailure<T> implements HomeState<T> {
  const HomeFailure({required this.error});
  

 final  String error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFailureCopyWith<T, HomeFailure<T>> get copyWith => _$HomeFailureCopyWithImpl<T, HomeFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState<$T>.homeFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $HomeFailureCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $HomeFailureCopyWith(HomeFailure<T> value, $Res Function(HomeFailure<T>) _then) = _$HomeFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$HomeFailureCopyWithImpl<T,$Res>
    implements $HomeFailureCopyWith<T, $Res> {
  _$HomeFailureCopyWithImpl(this._self, this._then);

  final HomeFailure<T> _self;
  final $Res Function(HomeFailure<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HomeFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
