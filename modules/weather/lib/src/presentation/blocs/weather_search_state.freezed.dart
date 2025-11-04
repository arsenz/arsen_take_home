// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherSearchState implements DiagnosticableTreeMixin {

 WeatherStatus get weatherStatus; CitiesStatus get citiesStatus;
/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherSearchStateCopyWith<WeatherSearchState> get copyWith => _$WeatherSearchStateCopyWithImpl<WeatherSearchState>(this as WeatherSearchState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherSearchState'))
    ..add(DiagnosticsProperty('weatherStatus', weatherStatus))..add(DiagnosticsProperty('citiesStatus', citiesStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherSearchState&&(identical(other.weatherStatus, weatherStatus) || other.weatherStatus == weatherStatus)&&(identical(other.citiesStatus, citiesStatus) || other.citiesStatus == citiesStatus));
}


@override
int get hashCode => Object.hash(runtimeType,weatherStatus,citiesStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherSearchState(weatherStatus: $weatherStatus, citiesStatus: $citiesStatus)';
}


}

/// @nodoc
abstract mixin class $WeatherSearchStateCopyWith<$Res>  {
  factory $WeatherSearchStateCopyWith(WeatherSearchState value, $Res Function(WeatherSearchState) _then) = _$WeatherSearchStateCopyWithImpl;
@useResult
$Res call({
 WeatherStatus weatherStatus, CitiesStatus citiesStatus
});


$WeatherStatusCopyWith<$Res> get weatherStatus;$CitiesStatusCopyWith<$Res> get citiesStatus;

}
/// @nodoc
class _$WeatherSearchStateCopyWithImpl<$Res>
    implements $WeatherSearchStateCopyWith<$Res> {
  _$WeatherSearchStateCopyWithImpl(this._self, this._then);

  final WeatherSearchState _self;
  final $Res Function(WeatherSearchState) _then;

/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherStatus = null,Object? citiesStatus = null,}) {
  return _then(_self.copyWith(
weatherStatus: null == weatherStatus ? _self.weatherStatus : weatherStatus // ignore: cast_nullable_to_non_nullable
as WeatherStatus,citiesStatus: null == citiesStatus ? _self.citiesStatus : citiesStatus // ignore: cast_nullable_to_non_nullable
as CitiesStatus,
  ));
}
/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherStatusCopyWith<$Res> get weatherStatus {
  
  return $WeatherStatusCopyWith<$Res>(_self.weatherStatus, (value) {
    return _then(_self.copyWith(weatherStatus: value));
  });
}/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitiesStatusCopyWith<$Res> get citiesStatus {
  
  return $CitiesStatusCopyWith<$Res>(_self.citiesStatus, (value) {
    return _then(_self.copyWith(citiesStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherSearchState].
extension WeatherSearchStatePatterns on WeatherSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherSearchState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherSearchState value)  $default,){
final _that = this;
switch (_that) {
case _WeatherSearchState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherSearchState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WeatherStatus weatherStatus,  CitiesStatus citiesStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherSearchState() when $default != null:
return $default(_that.weatherStatus,_that.citiesStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WeatherStatus weatherStatus,  CitiesStatus citiesStatus)  $default,) {final _that = this;
switch (_that) {
case _WeatherSearchState():
return $default(_that.weatherStatus,_that.citiesStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WeatherStatus weatherStatus,  CitiesStatus citiesStatus)?  $default,) {final _that = this;
switch (_that) {
case _WeatherSearchState() when $default != null:
return $default(_that.weatherStatus,_that.citiesStatus);case _:
  return null;

}
}

}

/// @nodoc


class _WeatherSearchState extends WeatherSearchState with DiagnosticableTreeMixin {
  const _WeatherSearchState({required this.weatherStatus, required this.citiesStatus}): super._();
  

@override final  WeatherStatus weatherStatus;
@override final  CitiesStatus citiesStatus;

/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherSearchStateCopyWith<_WeatherSearchState> get copyWith => __$WeatherSearchStateCopyWithImpl<_WeatherSearchState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherSearchState'))
    ..add(DiagnosticsProperty('weatherStatus', weatherStatus))..add(DiagnosticsProperty('citiesStatus', citiesStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherSearchState&&(identical(other.weatherStatus, weatherStatus) || other.weatherStatus == weatherStatus)&&(identical(other.citiesStatus, citiesStatus) || other.citiesStatus == citiesStatus));
}


@override
int get hashCode => Object.hash(runtimeType,weatherStatus,citiesStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherSearchState(weatherStatus: $weatherStatus, citiesStatus: $citiesStatus)';
}


}

/// @nodoc
abstract mixin class _$WeatherSearchStateCopyWith<$Res> implements $WeatherSearchStateCopyWith<$Res> {
  factory _$WeatherSearchStateCopyWith(_WeatherSearchState value, $Res Function(_WeatherSearchState) _then) = __$WeatherSearchStateCopyWithImpl;
@override @useResult
$Res call({
 WeatherStatus weatherStatus, CitiesStatus citiesStatus
});


@override $WeatherStatusCopyWith<$Res> get weatherStatus;@override $CitiesStatusCopyWith<$Res> get citiesStatus;

}
/// @nodoc
class __$WeatherSearchStateCopyWithImpl<$Res>
    implements _$WeatherSearchStateCopyWith<$Res> {
  __$WeatherSearchStateCopyWithImpl(this._self, this._then);

  final _WeatherSearchState _self;
  final $Res Function(_WeatherSearchState) _then;

/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherStatus = null,Object? citiesStatus = null,}) {
  return _then(_WeatherSearchState(
weatherStatus: null == weatherStatus ? _self.weatherStatus : weatherStatus // ignore: cast_nullable_to_non_nullable
as WeatherStatus,citiesStatus: null == citiesStatus ? _self.citiesStatus : citiesStatus // ignore: cast_nullable_to_non_nullable
as CitiesStatus,
  ));
}

/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherStatusCopyWith<$Res> get weatherStatus {
  
  return $WeatherStatusCopyWith<$Res>(_self.weatherStatus, (value) {
    return _then(_self.copyWith(weatherStatus: value));
  });
}/// Create a copy of WeatherSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitiesStatusCopyWith<$Res> get citiesStatus {
  
  return $CitiesStatusCopyWith<$Res>(_self.citiesStatus, (value) {
    return _then(_self.copyWith(citiesStatus: value));
  });
}
}

/// @nodoc
mixin _$WeatherStatus implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherStatus'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherStatus()';
}


}

/// @nodoc
class $WeatherStatusCopyWith<$Res>  {
$WeatherStatusCopyWith(WeatherStatus _, $Res Function(WeatherStatus) __);
}


/// Adds pattern-matching-related methods to [WeatherStatus].
extension WeatherStatusPatterns on WeatherStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WeatherIdle value)?  idle,TResult Function( WeatherLoading value)?  loading,TResult Function( WeatherSuccess value)?  success,TResult Function( WeatherFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WeatherIdle() when idle != null:
return idle(_that);case WeatherLoading() when loading != null:
return loading(_that);case WeatherSuccess() when success != null:
return success(_that);case WeatherFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WeatherIdle value)  idle,required TResult Function( WeatherLoading value)  loading,required TResult Function( WeatherSuccess value)  success,required TResult Function( WeatherFailure value)  failure,}){
final _that = this;
switch (_that) {
case WeatherIdle():
return idle(_that);case WeatherLoading():
return loading(_that);case WeatherSuccess():
return success(_that);case WeatherFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WeatherIdle value)?  idle,TResult? Function( WeatherLoading value)?  loading,TResult? Function( WeatherSuccess value)?  success,TResult? Function( WeatherFailure value)?  failure,}){
final _that = this;
switch (_that) {
case WeatherIdle() when idle != null:
return idle(_that);case WeatherLoading() when loading != null:
return loading(_that);case WeatherSuccess() when success != null:
return success(_that);case WeatherFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( WeatherForecast forecast)?  success,TResult Function( String reason)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WeatherIdle() when idle != null:
return idle();case WeatherLoading() when loading != null:
return loading();case WeatherSuccess() when success != null:
return success(_that.forecast);case WeatherFailure() when failure != null:
return failure(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( WeatherForecast forecast)  success,required TResult Function( String reason)  failure,}) {final _that = this;
switch (_that) {
case WeatherIdle():
return idle();case WeatherLoading():
return loading();case WeatherSuccess():
return success(_that.forecast);case WeatherFailure():
return failure(_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( WeatherForecast forecast)?  success,TResult? Function( String reason)?  failure,}) {final _that = this;
switch (_that) {
case WeatherIdle() when idle != null:
return idle();case WeatherLoading() when loading != null:
return loading();case WeatherSuccess() when success != null:
return success(_that.forecast);case WeatherFailure() when failure != null:
return failure(_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class WeatherIdle with DiagnosticableTreeMixin implements WeatherStatus {
  const WeatherIdle();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherStatus.idle'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherStatus.idle()';
}


}




/// @nodoc


class WeatherLoading with DiagnosticableTreeMixin implements WeatherStatus {
  const WeatherLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherStatus.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherStatus.loading()';
}


}




/// @nodoc


class WeatherSuccess with DiagnosticableTreeMixin implements WeatherStatus {
  const WeatherSuccess({required this.forecast});
  

 final  WeatherForecast forecast;

/// Create a copy of WeatherStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherSuccessCopyWith<WeatherSuccess> get copyWith => _$WeatherSuccessCopyWithImpl<WeatherSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherStatus.success'))
    ..add(DiagnosticsProperty('forecast', forecast));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherSuccess&&(identical(other.forecast, forecast) || other.forecast == forecast));
}


@override
int get hashCode => Object.hash(runtimeType,forecast);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherStatus.success(forecast: $forecast)';
}


}

/// @nodoc
abstract mixin class $WeatherSuccessCopyWith<$Res> implements $WeatherStatusCopyWith<$Res> {
  factory $WeatherSuccessCopyWith(WeatherSuccess value, $Res Function(WeatherSuccess) _then) = _$WeatherSuccessCopyWithImpl;
@useResult
$Res call({
 WeatherForecast forecast
});




}
/// @nodoc
class _$WeatherSuccessCopyWithImpl<$Res>
    implements $WeatherSuccessCopyWith<$Res> {
  _$WeatherSuccessCopyWithImpl(this._self, this._then);

  final WeatherSuccess _self;
  final $Res Function(WeatherSuccess) _then;

/// Create a copy of WeatherStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forecast = null,}) {
  return _then(WeatherSuccess(
forecast: null == forecast ? _self.forecast : forecast // ignore: cast_nullable_to_non_nullable
as WeatherForecast,
  ));
}


}

/// @nodoc


class WeatherFailure with DiagnosticableTreeMixin implements WeatherStatus {
  const WeatherFailure(this.reason);
  

 final  String reason;

/// Create a copy of WeatherStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherFailureCopyWith<WeatherFailure> get copyWith => _$WeatherFailureCopyWithImpl<WeatherFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherStatus.failure'))
    ..add(DiagnosticsProperty('reason', reason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherFailure&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherStatus.failure(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $WeatherFailureCopyWith<$Res> implements $WeatherStatusCopyWith<$Res> {
  factory $WeatherFailureCopyWith(WeatherFailure value, $Res Function(WeatherFailure) _then) = _$WeatherFailureCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$WeatherFailureCopyWithImpl<$Res>
    implements $WeatherFailureCopyWith<$Res> {
  _$WeatherFailureCopyWithImpl(this._self, this._then);

  final WeatherFailure _self;
  final $Res Function(WeatherFailure) _then;

/// Create a copy of WeatherStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(WeatherFailure(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CitiesStatus implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CitiesStatus'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitiesStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CitiesStatus()';
}


}

/// @nodoc
class $CitiesStatusCopyWith<$Res>  {
$CitiesStatusCopyWith(CitiesStatus _, $Res Function(CitiesStatus) __);
}


/// Adds pattern-matching-related methods to [CitiesStatus].
extension CitiesStatusPatterns on CitiesStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CitiesIdle value)?  idle,TResult Function( CitiesLoading value)?  loading,TResult Function( CitiesSuccess value)?  success,TResult Function( CitiesFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CitiesIdle() when idle != null:
return idle(_that);case CitiesLoading() when loading != null:
return loading(_that);case CitiesSuccess() when success != null:
return success(_that);case CitiesFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CitiesIdle value)  idle,required TResult Function( CitiesLoading value)  loading,required TResult Function( CitiesSuccess value)  success,required TResult Function( CitiesFailure value)  failure,}){
final _that = this;
switch (_that) {
case CitiesIdle():
return idle(_that);case CitiesLoading():
return loading(_that);case CitiesSuccess():
return success(_that);case CitiesFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CitiesIdle value)?  idle,TResult? Function( CitiesLoading value)?  loading,TResult? Function( CitiesSuccess value)?  success,TResult? Function( CitiesFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CitiesIdle() when idle != null:
return idle(_that);case CitiesLoading() when loading != null:
return loading(_that);case CitiesSuccess() when success != null:
return success(_that);case CitiesFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( List<Location> locations)?  success,TResult Function( String reason)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CitiesIdle() when idle != null:
return idle();case CitiesLoading() when loading != null:
return loading();case CitiesSuccess() when success != null:
return success(_that.locations);case CitiesFailure() when failure != null:
return failure(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( List<Location> locations)  success,required TResult Function( String reason)  failure,}) {final _that = this;
switch (_that) {
case CitiesIdle():
return idle();case CitiesLoading():
return loading();case CitiesSuccess():
return success(_that.locations);case CitiesFailure():
return failure(_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( List<Location> locations)?  success,TResult? Function( String reason)?  failure,}) {final _that = this;
switch (_that) {
case CitiesIdle() when idle != null:
return idle();case CitiesLoading() when loading != null:
return loading();case CitiesSuccess() when success != null:
return success(_that.locations);case CitiesFailure() when failure != null:
return failure(_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class CitiesIdle with DiagnosticableTreeMixin implements CitiesStatus {
  const CitiesIdle();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CitiesStatus.idle'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitiesIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CitiesStatus.idle()';
}


}




/// @nodoc


class CitiesLoading with DiagnosticableTreeMixin implements CitiesStatus {
  const CitiesLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CitiesStatus.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitiesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CitiesStatus.loading()';
}


}




/// @nodoc


class CitiesSuccess with DiagnosticableTreeMixin implements CitiesStatus {
  const CitiesSuccess({required final  List<Location> locations}): _locations = locations;
  

 final  List<Location> _locations;
 List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of CitiesStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitiesSuccessCopyWith<CitiesSuccess> get copyWith => _$CitiesSuccessCopyWithImpl<CitiesSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CitiesStatus.success'))
    ..add(DiagnosticsProperty('locations', locations));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitiesSuccess&&const DeepCollectionEquality().equals(other._locations, _locations));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CitiesStatus.success(locations: $locations)';
}


}

/// @nodoc
abstract mixin class $CitiesSuccessCopyWith<$Res> implements $CitiesStatusCopyWith<$Res> {
  factory $CitiesSuccessCopyWith(CitiesSuccess value, $Res Function(CitiesSuccess) _then) = _$CitiesSuccessCopyWithImpl;
@useResult
$Res call({
 List<Location> locations
});




}
/// @nodoc
class _$CitiesSuccessCopyWithImpl<$Res>
    implements $CitiesSuccessCopyWith<$Res> {
  _$CitiesSuccessCopyWithImpl(this._self, this._then);

  final CitiesSuccess _self;
  final $Res Function(CitiesSuccess) _then;

/// Create a copy of CitiesStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locations = null,}) {
  return _then(CitiesSuccess(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,
  ));
}


}

/// @nodoc


class CitiesFailure with DiagnosticableTreeMixin implements CitiesStatus {
  const CitiesFailure(this.reason);
  

 final  String reason;

/// Create a copy of CitiesStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitiesFailureCopyWith<CitiesFailure> get copyWith => _$CitiesFailureCopyWithImpl<CitiesFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CitiesStatus.failure'))
    ..add(DiagnosticsProperty('reason', reason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitiesFailure&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CitiesStatus.failure(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CitiesFailureCopyWith<$Res> implements $CitiesStatusCopyWith<$Res> {
  factory $CitiesFailureCopyWith(CitiesFailure value, $Res Function(CitiesFailure) _then) = _$CitiesFailureCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$CitiesFailureCopyWithImpl<$Res>
    implements $CitiesFailureCopyWith<$Res> {
  _$CitiesFailureCopyWithImpl(this._self, this._then);

  final CitiesFailure _self;
  final $Res Function(CitiesFailure) _then;

/// Create a copy of CitiesStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(CitiesFailure(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
