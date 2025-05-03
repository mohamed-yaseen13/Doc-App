// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorsState<$T>()';
}


}

/// @nodoc
class $DoctorsStateCopyWith<T,$Res>  {
$DoctorsStateCopyWith(DoctorsState<T> _, $Res Function(DoctorsState<T>) __);
}


/// @nodoc


class _DoctorsInitial<T> implements DoctorsState<T> {
  const _DoctorsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorsInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorsState<$T>.doctorsInitial()';
}


}




/// @nodoc


class DoctorsLoading<T> implements DoctorsState<T> {
  const DoctorsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorsState<$T>.doctorsLoading()';
}


}




/// @nodoc


class DoctorsSuccess<T> implements DoctorsState<T> {
  const DoctorsSuccess(this.data);
  

 final  T data;

/// Create a copy of DoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<T, DoctorsSuccess<T>> get copyWith => _$DoctorsSuccessCopyWithImpl<T, DoctorsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DoctorsState<$T>.doctorsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<T,$Res> implements $DoctorsStateCopyWith<T, $Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess<T> value, $Res Function(DoctorsSuccess<T>) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<T,$Res>
    implements $DoctorsSuccessCopyWith<T, $Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess<T> _self;
  final $Res Function(DoctorsSuccess<T>) _then;

/// Create a copy of DoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(DoctorsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class DoctorsFailure<T> implements DoctorsState<T> {
  const DoctorsFailure({required this.error});
  

 final  String error;

/// Create a copy of DoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsFailureCopyWith<T, DoctorsFailure<T>> get copyWith => _$DoctorsFailureCopyWithImpl<T, DoctorsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DoctorsState<$T>.doctorsFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $DoctorsFailureCopyWith<T,$Res> implements $DoctorsStateCopyWith<T, $Res> {
  factory $DoctorsFailureCopyWith(DoctorsFailure<T> value, $Res Function(DoctorsFailure<T>) _then) = _$DoctorsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DoctorsFailureCopyWithImpl<T,$Res>
    implements $DoctorsFailureCopyWith<T, $Res> {
  _$DoctorsFailureCopyWithImpl(this._self, this._then);

  final DoctorsFailure<T> _self;
  final $Res Function(DoctorsFailure<T>) _then;

/// Create a copy of DoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DoctorsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
