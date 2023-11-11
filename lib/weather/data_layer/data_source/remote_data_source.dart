import 'package:dio/dio.dart';
import 'package:simple_weather_app/core/utils/constants/constants.dart';
import '../models/WeatherModel.dart';
//write in this class the dataSource --> api , we will get it using dio package
abstract class BaseRemoteDataSource {
  //abstract method : we need to get weather by city name
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource extends BaseRemoteDataSource {
  //implement the override abstract method of getWeatherByCityName here
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${Constants.baseUrl}/weather?q=$cityName&appid=${Constants.appId}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
