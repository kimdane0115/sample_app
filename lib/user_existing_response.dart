import 'package:json_annotation/json_annotation.dart';

part 'user_existing_response.g.dart';

@JsonSerializable()
class UserExistingResponse {
  final bool existing;
  UserExistingResponse({
    required this.existing,
  });

  factory UserExistingResponse.fromJson(Map<String, dynamic> json) => _$UserExistingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserExistingResponseToJson(this);
}
