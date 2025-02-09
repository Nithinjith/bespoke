
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'user_model.g.dart';

@firestoreSerializable
class User{
  User({
    required this.id,
    required this.objectId,
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.phone
  }
  );

  @Id()
  final String id;
  final String objectId;
  final DateTime createdAt;
  final String name;
  final String email;
  final DateTime updatedAt;
  final int phone;


  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
@firestoreSerializable
class WorkStatus{
  WorkStatus({
    required this.id,
    required this.objectId,
    required this.workDate,
    required this.hoursWorked,
    required this.updatedAt,
    required this.createdAt,
    required this.userId,
    required this.projectId,

  });

  @Id()
  final String id;
  final String objectId;
  final DateTime createdAt;
  final DateTime workDate;
  final double hoursWorked; // 4, 8, 12, 16
  final DateTime updatedAt;
  final String userId;
  final String projectId;

  factory WorkStatus.fromJson(Map<String, dynamic> json) {
    return _$WorkStatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkStatusToJson(this);
}
@firestoreSerializable
class UserFinance{
  UserFinance(  this.description,{
    required this.id,
    required this.objectId,
    required this.updatedAt,
    required this.createdAt,
    required this.userId,
    required this.projectId,
    required this.amount,
    required this.status,
  });

  @Id()
  final String id;
  final String objectId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String userId;
  final String projectId;
  final double amount;
  final String status;
  final String? description;

  factory UserFinance.fromJson(Map<String, dynamic> json) {
    return _$UserFinanceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserFinanceToJson(this);
}
@firestoreSerializable
class UserProject{
  UserProject({
    required this.id,
    required this.objectId,
    required this.updatedAt,
    required this.createdAt,
    required this.userId,
  });

  @Id()
  final String id;
  final String objectId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String userId;

  factory UserProject.fromJson(Map<String, dynamic> json) {
    return _$UserProjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserProjectToJson(this);
}
@firestoreSerializable
class AssociatedUser{
  AssociatedUser({
    required this.id,
    required this.objectId,
    required this.updatedAt,
    required this.createdAt,
    required this.userId,
  });

  @Id()
  final String id;
  final String objectId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String userId;

  factory AssociatedUser.fromJson(Map<String, dynamic> json) {
    return _$AssociatedUserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssociatedUserToJson(this);
}

@Collection<User>('users')
@Collection<WorkStatus>('users/*/work_status')
@Collection<UserFinance>('users/*/finance')
@Collection<UserProject>('users/*/user_projects')
@Collection<AssociatedUser>('users/*/associated_users')
final userRef = UserCollectionReference();