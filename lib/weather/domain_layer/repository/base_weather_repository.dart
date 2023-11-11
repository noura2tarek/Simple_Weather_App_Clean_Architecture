import 'package:simple_weather_app/weather/domain_layer/entities/weather.dart';
//abstract class : it is the contract / abstraction between the domain layer and other layers
abstract class BaseWeatherRepository{

  //abstract method : we need to get weather by city name
  Future<Weather>  getWeatherByCityName(String cityName);

}