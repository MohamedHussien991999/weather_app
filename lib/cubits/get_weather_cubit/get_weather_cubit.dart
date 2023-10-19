import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import '../../services/weather_sevices.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  getWeather({required cityName}) async {
    try {
      weatherModel = await WeatherServices(dio: Dio()).getWeather(cityName);
      log(weatherModel!.cityName);
      emit(WeatherLoadingState(weatherModel!));
    } catch (e) {
      log(e.toString());
      emit(WeatherFailureState());
    }
  }
}
