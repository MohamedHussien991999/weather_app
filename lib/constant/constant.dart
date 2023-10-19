  
import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) return Colors.blue;

  // Create a map to map weather conditions to MaterialColors
  final conditionToColor = {
    'Sunny': Colors.orange,
    'Partly cloudy': Colors.lightBlue,
    'Cloudy': Colors.grey,
    'Overcast': Colors
        .grey, // You can use the same color for multiple conditions if needed
    'Mist': Colors.grey,
    'Patchy rain possible': Colors.indigo,
    'Patchy snow possible': Colors.lightBlue,
    'Patchy sleet possible': Colors.lightBlue,
    'Patchy freezing drizzle possible': Colors.lightBlue,
    'Thundery outbreaks possible': Colors.indigo,
    'Blowing snow': Colors.lightBlue,
    'Blizzard': Colors.lightBlue,
    'Fog': Colors.grey,
    'Freezing fog': Colors.lightBlue,
    'Patchy light drizzle': Colors.indigo,
    'Light drizzle': Colors.indigo,
    'Freezing drizzle': Colors.lightBlue,
    'Heavy freezing drizzle': Colors.lightBlue,
    'Patchy light rain': Colors.indigo,
    'Light rain': Colors.indigo,
    'Moderate rain at times': Colors.indigo,
    'Moderate rain': Colors.indigo,
    'Heavy rain at times': Colors.indigo,
    'Heavy rain': Colors.indigo,
    'Light freezing rain': Colors.lightBlue,
    'Moderate or heavy freezing rain': Colors.lightBlue,
    'Light sleet': Colors.lightBlue,
    'Moderate or heavy sleet': Colors.lightBlue,
    'Patchy light snow': Colors.lightBlue,
    'Light snow': Colors.lightBlue,
    'Patchy moderate snow': Colors.lightBlue,
    'Moderate snow': Colors.lightBlue,
    'Patchy heavy snow': Colors.lightBlue,
    'Heavy snow': Colors.lightBlue,
    'Ice pellets': Colors.lightBlue,
    'Light rain shower': Colors.indigo,
    'Moderate or heavy rain shower': Colors.indigo,
    'Torrential rain shower': Colors.indigo,
    'Light sleet showers': Colors.lightBlue,
    'Moderate or heavy sleet showers': Colors.lightBlue,
    'Light snow showers': Colors.lightBlue,
    'Moderate or heavy snow showers': Colors.lightBlue,
    'Light showers of ice pellets': Colors.lightBlue,
    'Moderate or heavy showers of ice pellets': Colors.lightBlue,
    'Patchy light rain with thunder': Colors.indigo,
    'Moderate or heavy rain with thunder': Colors.indigo,
    'Patchy light snow with thunder': Colors.lightBlue,
    'Moderate or heavy snow with thunder': Colors.lightBlue,
  };

  // Check if the condition exists in the map, and return the corresponding MaterialColor
  if (conditionToColor.containsKey(condition)) {
    return conditionToColor[condition]!;
  } else {
    // Return a default color if the condition is not found
    return Colors.blue;
  }
}
