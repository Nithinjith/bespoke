// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      isActive: json['isActive'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

const _$$UserModelImplFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'email': 'email',
  'isActive': 'isActive',
  'createdAt': 'createdAt',
};

// ignore: unused_element
abstract class _$$UserModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(int instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? isActive(bool instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) => instance?.toIso8601String();
}

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
