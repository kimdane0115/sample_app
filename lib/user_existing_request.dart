import 'package:json_annotation/json_annotation.dart';

part 'user_existing_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UserExistingRequest {
  final String? id;
  final String? name;
  final String? email;
  
  UserExistingRequest({
    this.id,
    this.name,
    this.email
  });

  factory UserExistingRequest.fromJson(Map<String, dynamic> json) => _$UserExistingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserExistingRequestToJson(this);
}
