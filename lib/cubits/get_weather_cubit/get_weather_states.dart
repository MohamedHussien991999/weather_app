import '../../models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {
  WeatherLoadingState(this.weatherModel);
  final WeatherModel weatherModel;
}

class WeatherFailureState extends WeatherState {}
