import 'package:simple_weather_app/weather/data_layer/data_source/remote_data_source.dart';
import 'package:simple_weather_app/weather/domain_layer/entities/weather.dart';
import 'package:simple_weather_app/weather/domain_layer/repository/base_weather_repository.dart';

class WeatherRepository extends BaseWeatherRepository{

  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
  return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;

  }



}