import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:filmy/core/constants/constants.dart';
import 'package:filmy/core/utils/error/errors.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/core/utils/util_models/dio_singleton.dart';

class GeneralDataGetter {

  static final _dio = DioSingleton.getDioInstance();

  static Future<Map<String,dynamic>> getData({required String endPoint})async{
    print('getting the data, initiating the call');
    final response = await _dio.get(endPoint);
    print('got the data ${response.data}');

      if (response.statusCode == 200) {
        print('sending data from getter to caller');
        return response.data;
      }
      else {
        print('throwing an exception from getter');
        throw ServerException.fromJson(response.data);
      }
  }
}