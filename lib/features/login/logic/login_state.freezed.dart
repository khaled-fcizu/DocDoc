// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>()';
}


}

/// @nodoc
class $LoginStateCopyWith<T,$Res>  {
$LoginStateCopyWith(LoginState<T> _, $Res Function(LoginState<T>) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns<T> on LoginState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginInitial<T> value)?  loginInitial,TResult Function( LoginLoading<T> value)?  loginLoading,TResult Function( LoginSeccess<T> value)?  loginSeccess,TResult Function( LoginFailure<T> value)?  loginError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSeccess() when loginSeccess != null:
return loginSeccess(_that);case LoginFailure() when loginError != null:
return loginError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginInitial<T> value)  loginInitial,required TResult Function( LoginLoading<T> value)  loginLoading,required TResult Function( LoginSeccess<T> value)  loginSeccess,required TResult Function( LoginFailure<T> value)  loginError,}){
final _that = this;
switch (_that) {
case _LoginInitial():
return loginInitial(_that);case LoginLoading():
return loginLoading(_that);case LoginSeccess():
return loginSeccess(_that);case LoginFailure():
return loginError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginInitial<T> value)?  loginInitial,TResult? Function( LoginLoading<T> value)?  loginLoading,TResult? Function( LoginSeccess<T> value)?  loginSeccess,TResult? Function( LoginFailure<T> value)?  loginError,}){
final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSeccess() when loginSeccess != null:
return loginSeccess(_that);case LoginFailure() when loginError != null:
return loginError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loginInitial,TResult Function()?  loginLoading,TResult Function( T data)?  loginSeccess,TResult Function( ApiErrorModel apiErrorModel)?  loginError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSeccess() when loginSeccess != null:
return loginSeccess(_that.data);case LoginFailure() when loginError != null:
return loginError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loginInitial,required TResult Function()  loginLoading,required TResult Function( T data)  loginSeccess,required TResult Function( ApiErrorModel apiErrorModel)  loginError,}) {final _that = this;
switch (_that) {
case _LoginInitial():
return loginInitial();case LoginLoading():
return loginLoading();case LoginSeccess():
return loginSeccess(_that.data);case LoginFailure():
return loginError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loginInitial,TResult? Function()?  loginLoading,TResult? Function( T data)?  loginSeccess,TResult? Function( ApiErrorModel apiErrorModel)?  loginError,}) {final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSeccess() when loginSeccess != null:
return loginSeccess(_that.data);case LoginFailure() when loginError != null:
return loginError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _LoginInitial<T> implements LoginState<T> {
  const _LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.loginInitial()';
}


}




/// @nodoc


class LoginLoading<T> implements LoginState<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.loginLoading()';
}


}




/// @nodoc


class LoginSeccess<T> implements LoginState<T> {
  const LoginSeccess(this.data);
  

 final  T data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSeccessCopyWith<T, LoginSeccess<T>> get copyWith => _$LoginSeccessCopyWithImpl<T, LoginSeccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSeccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginState<$T>.loginSeccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSeccessCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $LoginSeccessCopyWith(LoginSeccess<T> value, $Res Function(LoginSeccess<T>) _then) = _$LoginSeccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoginSeccessCopyWithImpl<T,$Res>
    implements $LoginSeccessCopyWith<T, $Res> {
  _$LoginSeccessCopyWithImpl(this._self, this._then);

  final LoginSeccess<T> _self;
  final $Res Function(LoginSeccess<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoginSeccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LoginFailure<T> implements LoginState<T> {
  const LoginFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureCopyWith<T, LoginFailure<T>> get copyWith => _$LoginFailureCopyWithImpl<T, LoginFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'LoginState<$T>.loginError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $LoginFailureCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $LoginFailureCopyWith(LoginFailure<T> value, $Res Function(LoginFailure<T>) _then) = _$LoginFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$LoginFailureCopyWithImpl<T,$Res>
    implements $LoginFailureCopyWith<T, $Res> {
  _$LoginFailureCopyWithImpl(this._self, this._then);

  final LoginFailure<T> _self;
  final $Res Function(LoginFailure<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(LoginFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
