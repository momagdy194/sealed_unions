import 'package:sealed_unions/factories/triplet_factory.dart';
import 'package:sealed_unions/implementations/union_3_impl.dart';
import 'package:sealed_unions/union_3.dart';

class WeatherState extends Union3Impl<_InitialWeatherState, _LoadingWeatherState, _LoadedWeatherState>

{
  WeatherState._(Union3<_InitialWeatherState, _LoadingWeatherState, _LoadedWeatherState>union) : super(union);

  static final _factory = const Triplet<_InitialWeatherState, _LoadingWeatherState, _LoadedWeatherState>();

  factory WeatherState.initial() =>
      WeatherState._(_factory.first(_InitialWeatherState()));

  factory WeatherState.loading() =>
      WeatherState._(_factory.second(_LoadingWeatherState()));

  factory WeatherState.loaded(weather) =>
      WeatherState._(_factory.third(_LoadedWeatherState(weather)));
}

class _InitialWeatherState {}

class _LoadingWeatherState {}

class _LoadedWeatherState {
  final weather;

  _LoadedWeatherState(this.weather);
}
