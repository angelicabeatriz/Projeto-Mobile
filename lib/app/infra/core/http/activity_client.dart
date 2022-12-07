import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../../../../env.dart';

class ActivityClient extends DioMixin {
  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  BaseOptions get options => BaseOptions(baseUrl: Env.baseUrl);
}
