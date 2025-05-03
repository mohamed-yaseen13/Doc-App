// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specializations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecializationsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationsState<$T>()';
}


}

/// @nodoc
class $SpecializationsStateCopyWith<T,$Res>  {
$SpecializationsStateCopyWith(SpecializationsState<T> _, $Res Function(SpecializationsState<T>) __);
}


/// @nodoc


class SpecializationsInitial<T> implements SpecializationsState<T> {
  const SpecializationsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationsState<$T>.specializationsInitial()';
}


}




/// @nodoc


class SpecializationsLoading<T> implements SpecializationsState<T> {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecializationsState<$T>.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsSuccess<T> implements SpecializationsState<T> {
  const SpecializationsSuccess(this.data);
  

 final  T data;

/// Create a copy of SpecializationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsSuccessCopyWith<T, SpecializationsSuccess<T>> get copyWith => _$SpecializationsSuccessCopyWithImpl<T, SpecializationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SpecializationsState<$T>.specializationsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SpecializationsSuccessCopyWith<T,$Res> implements $SpecializationsStateCopyWith<T, $Res> {
  factory $SpecializationsSuccessCopyWith(SpecializationsSuccess<T> value, $Res Function(SpecializationsSuccess<T>) _then) = _$SpecializationsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SpecializationsSuccessCopyWithImpl<T,$Res>
    implements $SpecializationsSuccessCopyWith<T, $Res> {
  _$SpecializationsSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsSuccess<T> _self;
  final $Res Function(SpecializationsSuccess<T>) _then;

/// Create a copy of SpecializationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SpecializationsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SpecializationsFailure<T> implements SpecializationsState<T> {
  const SpecializationsFailure({required this.error});
  

 final  String error;

/// Create a copy of SpecializationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsFailureCopyWith<T, SpecializationsFailure<T>> get copyWith => _$SpecializationsFailureCopyWithImpl<T, SpecializationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SpecializationsState<$T>.specializationsFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationsFailureCopyWith<T,$Res> implements $SpecializationsStateCopyWith<T, $Res> {
  factory $SpecializationsFailureCopyWith(SpecializationsFailure<T> value, $Res Function(SpecializationsFailure<T>) _then) = _$SpecializationsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SpecializationsFailureCopyWithImpl<T,$Res>
    implements $SpecializationsFailureCopyWith<T, $Res> {
  _$SpecializationsFailureCopyWithImpl(this._self, this._then);

  final SpecializationsFailure<T> _self;
  final $Res Function(SpecializationsFailure<T>) _then;

/// Create a copy of SpecializationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
