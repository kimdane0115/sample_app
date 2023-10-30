import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/rest_client.dart';

final restApiProvider = Provider<RestClient>(
  (ref) {

    final dio = Dio();
    dio.options.baseUrl = 'https://dev-gongmap-api.dingdongu.com/v2/';

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest:(options, handler) {
          print('>>>>> onRequest !!!');
          return handler.next(options);
        },
        onResponse: (e, handler) {
          print('>>>>> onResponse !!!');
          print('>>>> ${e.toString()}');
          if (e.data!['success']) {
            print('>>>> data : ${e.data!['data']}');
            print('>>>>> existing : ${e.data!['code']}');
            return handler.next(e);
          } else {
            final newError = DioException(
              requestOptions: e.requestOptions,
              response: e,
              message: e.data!['message'], //표시할 메시지
              error: e.data!['code'], // 사용자 정의 오류 메시지
            );
            // interceptor onError로 전달
            return handler.reject(newError, true);
          }
        },
        onError: (e, handler) {
          print('>>>>>> error : $e');
          return handler.next(e);
        },
      )
    );

    final client = RestClient(dio);
    return client;
},
  name: 'restApiProvider',
  // dependencies: [
  //   localRepositoryProvider,
  //   serviceNotifierProvider,
  // ],
);