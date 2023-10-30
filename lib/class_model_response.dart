import 'package:json_annotation/json_annotation.dart';

part 'class_model_response.g.dart';

@JsonSerializable()
class ClassModelResponse {
  final String id;
  final String userId;
  final String userName;
  final String? userIconImageUrl;
  final String? campusId;
  final String? campusName;
  final String? majorName;
  final int? pricePerHour;
  final String averagePriceCurrency;
  final int? mentorRanking;

  final List<String>? primaryCategoryNames;
  final bool isAd;
  ClassModelResponse({
    required this.id,
    required this.userId,
    required this.userName,
    this.userIconImageUrl,
    this.campusId,
    this.campusName,
    this.majorName,
    this.pricePerHour,
    required this.averagePriceCurrency,
    this.mentorRanking,
    this.primaryCategoryNames,
    required this.isAd,
  });
  

  factory ClassModelResponse.fromJson(Map<String, dynamic> json) => _$ClassModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassModelResponseToJson(this);
}
