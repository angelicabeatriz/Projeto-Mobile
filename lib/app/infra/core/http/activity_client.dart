import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../env.dart';

final activityClientProvider = Provider<ActivityClient>(
  (ref) => ActivityClient(),
);

class ActivityClient extends DioMixin {
  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  BaseOptions get options => BaseOptions(baseUrl: Env.baseUrl);
}
