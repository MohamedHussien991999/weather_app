import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '1fdf6adedf57468db56122548231510';
  
  WeatherServices({required this.dio});


  Future<WeatherModel> getWeather(String cityName) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'Error occurred';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }
}
