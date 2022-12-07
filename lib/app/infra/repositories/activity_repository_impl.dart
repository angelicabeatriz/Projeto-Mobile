import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/core/failures/failures.dart';
import '../../domain/entities/activity_entity.dart';
import '../../domain/repositories/activity_repository.dart';
import '../core/http/activity_client.dart';
import '../models/activity_model.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class ActivityRepositoryImpl extends ActivityRepository {
  final ActivityClient client;
  ActivityRepositoryImpl({
    required this.client,
  });

  @override
  Future<Either<Failures, ActivityEntity>> getActivity(String type) async {
    try {
      final response =
          await client.get("/activity", queryParameters: {"type": type});
      final activity = ActivityModel.fromMap(response.data);
      return right(activity);
    } on DioError catch (e) {
      if (e.response!.statusCode == 404) return left(Failures.notFound);
     
    } catch (exception, stackTrace) {
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,

      );
    }
     return left(Failures.serverFailures);
  }
}
