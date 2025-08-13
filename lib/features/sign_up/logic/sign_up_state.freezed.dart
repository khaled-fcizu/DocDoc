// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SignUpInitial<T> value)?  signUpInitial,TResult Function( SignUpLoading<T> value)?  signUpLoading,TResult Function( SignUpSuccess<T> value)?  signUpSuccess,TResult Function( SignUpError<T> value)?  signUpError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpInitial() when signUpInitial != null:
return signUpInitial(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case SignUpError() when signUpError != null:
return signUpError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SignUpInitial<T> value)  signUpInitial,required TResult Function( SignUpLoading<T> value)  signUpLoading,required TResult Function( SignUpSuccess<T> value)  signUpSuccess,required TResult Function( SignUpError<T> value)  signUpError,}){
final _that = this;
switch (_that) {
case _SignUpInitial():
return signUpInitial(_that);case SignUpLoading():
return signUpLoading(_that);case SignUpSuccess():
return signUpSuccess(_that);case SignUpError():
return signUpError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SignUpInitial<T> value)?  signUpInitial,TResult? Function( SignUpLoading<T> value)?  signUpLoading,TResult? Function( SignUpSuccess<T> value)?  signUpSuccess,TResult? Function( SignUpError<T> value)?  signUpError,}){
final _that = this;
switch (_that) {
case _SignUpInitial() when signUpInitial != null:
return signUpInitial(_that);case SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case SignUpError() when signUpError != null:
return signUpError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  signUpInitial,TResult Function()?  signUpLoading,TResult Function( T data)?  signUpSuccess,TResult Function( ApiErrorModel apiErrorModel)?  signUpError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpInitial() when signUpInitial != null:
return signUpInitial();case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case SignUpError() when signUpError != null:
return signUpError(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  signUpInitial,required TResult Function()  signUpLoading,required TResult Function( T data)  signUpSuccess,required TResult Function( ApiErrorModel apiErrorModel)  signUpError,}) {final _that = this;
switch (_that) {
case _SignUpInitial():
return signUpInitial();case SignUpLoading():
return signUpLoading();case SignUpSuccess():
return signUpSuccess(_that.data);case SignUpError():
return signUpError(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  signUpInitial,TResult? Function()?  signUpLoading,TResult? Function( T data)?  signUpSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  signUpError,}) {final _that = this;
switch (_that) {
case _SignUpInitial() when signUpInitial != null:
return signUpInitial();case SignUpLoading() when signUpLoading != null:
return signUpLoading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case SignUpError() when signUpError != null:
return signUpError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpInitial<T> implements SignUpState<T> {
  const _SignUpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signUpInitial()';
}


}




/// @nodoc


class SignUpLoading<T> implements SignUpState<T> {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signUpLoading()';
}


}




/// @nodoc


class SignUpSuccess<T> implements SignUpState<T> {
  const SignUpSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<T, SignUpSuccess<T>> get copyWith => _$SignUpSuccessCopyWithImpl<T, SignUpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signUpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess<T> value, $Res Function(SignUpSuccess<T>) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<T,$Res>
    implements $SignUpSuccessCopyWith<T, $Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess<T> _self;
  final $Res Function(SignUpSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignUpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignUpError<T> implements SignUpState<T> {
  const SignUpError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpErrorCopyWith<T, SignUpError<T>> get copyWith => _$SignUpErrorCopyWithImpl<T, SignUpError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SignUpState<$T>.signUpError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SignUpErrorCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpErrorCopyWith(SignUpError<T> value, $Res Function(SignUpError<T>) _then) = _$SignUpErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SignUpErrorCopyWithImpl<T,$Res>
    implements $SignUpErrorCopyWith<T, $Res> {
  _$SignUpErrorCopyWithImpl(this._self, this._then);

  final SignUpError<T> _self;
  final $Res Function(SignUpError<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SignUpError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
