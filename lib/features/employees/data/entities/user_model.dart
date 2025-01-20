
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
    required this.createdAt,
    required this.updatedAt,
    required this.creatorId,
  });

  @Id()
  final String id;
  final String objectId;
  final String creatorId;
  final String name;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;


  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@Collection<User>('users')
final userRef = UserCollectionReference();