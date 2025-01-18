import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'project_model.g.dart';

const firestoreSerializable = JsonSerializable(
    converters: firestoreJsonConverters,
    explicitToJson: true,
    createFieldMap: true,
    createPerFieldToJson: true);

@firestoreSerializable
class Project {
  Project({
    required this.id,
    required this.objectId,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.creatorId,
    required this.expectedDeliveryDate,
    required this.startDate,
  });

  @Id()
  final String id;
  final String objectId;
  final String creatorId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime startDate;
  final DateTime updatedAt;
  final DateTime expectedDeliveryDate;

  factory Project.fromJson(Map<String, dynamic> json) {
    return _$ProjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@Collection<Project>('projects')
final projectRef = ProjectCollectionReference();
