// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_existing_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserExistingRequest _$UserExistingRequestFromJson(Map<String, dynamic> json) =>
    UserExistingRequest(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserExistingRequestToJson(UserExistingRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  return val;
}
