import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ostello_design/core/error/exceptions.dart';
import 'package:ostello_design/core/utils/constants.dart';
import 'package:ostello_design/features/data/datasource/local_datasource.dart';

part 'client.g.dart';

abstract class RestClient {
  factory RestClient(final Dio dio, final LocalDataSource localDataSource) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = localDataSource.getAccessToken();
          debugPrint(accessToken);
          if (accessToken.isNotEmpty) {
            options.headers[Constants.autorization] = accessToken;
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          if (response.data is Map && response.data['errorCode'] == "401") {
            throw UnAuthorizedException(response.data['errorMessage']);
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
    // dio.interceptors.add(chuck.getDioInterceptor());
    return RestClient(dio, localDataSource);
    //will return client.g.dart file which is automatically generated
    // return _RestClient(dio);
  }
}
