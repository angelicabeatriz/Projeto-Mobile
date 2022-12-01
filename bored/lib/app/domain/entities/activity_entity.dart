import 'package:equatable/equatable.dart';

class ActivityEntity extends Equatable {
  final String activity;
  final String type;
  const ActivityEntity({
    required this.activity,
    required this.type,
  });

  @override
  List<Object> get props => [activity, type];
}
