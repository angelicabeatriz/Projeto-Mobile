
import '../../domain/entities/activity_entity.dart';

class ActivityModel extends ActivityEntity {
  
  const ActivityModel({
    required String activity,
    required String type,
  }):super(activity: activity, type: type);
  

  
  Map<String, dynamic> toMap() {
    return {
      'activity': activity,
      'type': type,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      activity: map['activity'] ?? '',
      type: map['type'] ?? '',
    );
  }

 
}
