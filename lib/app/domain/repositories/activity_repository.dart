import 'package:dartz/dartz.dart';
import '../core/failures/failures.dart';
import '../entities/activity_entity.dart';

abstract class ActivityRepository {
  Future<Either<Failures, ActivityEntity>> getActivity(String type);
}
