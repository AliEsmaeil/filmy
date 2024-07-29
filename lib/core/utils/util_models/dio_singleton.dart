import 'dart:convert';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:filmy/core/constants/constants.dart';
import 'package:flutter/foundation.dart';

final class DioSingleton{

  static Dio? _dio;

  DioSingleton._internal();

  static Dio getDioInstance() {
    // dart is single threaded, no need here for locks (only one thread will access that shared resource at a time)
      _dio ??= Dio(
          BaseOptions(
            followRedirects: false,
            connectTimeout: Duration.zero,
            //  no limit
            receiveTimeout: Duration.zero,
            // no limit
            baseUrl: Constants.baseUrl,
            headers: {
              'accept': 'application/json',
             // 'Authorization': 'Bearer ${Constants.accessToken}}'
            },
            contentType: 'application/json',
            persistentConnection: true,
            queryParameters: {
              'language': 'en-US',
              'api_key': Constants.apiKey,// as you like, key or token bearer auth
            },
          )
      )..interceptors.add(InterceptorsWrapper(
          onRequest: (requestOptions, requestHandler) {
            debugPrint('${requestOptions.method}: ${requestOptions.uri}');
            return requestHandler.next(requestOptions);
          },
          onResponse: (response, responseHandler) {
            debugPrint(
                '${response.requestOptions.uri} : ${response.statusCode}');
            return responseHandler.next(response);
          },
          onError: (exception, handler) {
            debugPrint('EXCEPTION COMING FROM ${exception.requestOptions
                .uri} ... ${exception.error} ..... ${exception
                .message}... ${exception.stackTrace}');
            return handler.next(exception);
          }

      ));

    return _dio!;
  }

}