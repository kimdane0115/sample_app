// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassModelResponse _$ClassModelResponseFromJson(Map<String, dynamic> json) =>
    ClassModelResponse(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userIconImageUrl: json['userIconImageUrl'] as String?,
      campusId: json['campusId'] as String?,
      campusName: json['campusName'] as String?,
      majorName: json['majorName'] as String?,
      pricePerHour: json['pricePerHour'] as int?,
      averagePriceCurrency: json['averagePriceCurrency'] as String,
      mentorRanking: json['mentorRanking'] as int?,
      primaryCategoryNames: (json['primaryCategoryNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isAd: json['isAd'] as bool,
    );

Map<String, dynamic> _$ClassModelResponseToJson(ClassModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userIconImageUrl': instance.userIconImageUrl,
      'campusId': instance.campusId,
      'campusName': instance.campusName,
      'majorName': instance.majorName,
      'pricePerHour': instance.pricePerHour,
      'averagePriceCurrency': instance.averagePriceCurrency,
      'mentorRanking': instance.mentorRanking,
      'primaryCategoryNames': instance.primaryCategoryNames,
      'isAd': instance.isAd,
    };
