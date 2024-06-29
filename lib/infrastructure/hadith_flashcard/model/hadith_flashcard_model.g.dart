// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_flashcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithFlashcardModelImpl _$$HadithFlashcardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithFlashcardModelImpl(
      userName: json['userName'] as String?,
      hadithNarratorName: json['hadithNarratorName'] as String,
      hadithNumber: (json['hadithNumber'] as num).toInt(),
      arab: json['arab'] as String,
      translation: json['translation'] as String,
      interval: (json['interval'] as num).toInt(),
      repetition: (json['repetition'] as num).toInt(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      reviewedDate: DateTime.parse(json['reviewedDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$HadithFlashcardModelImplToJson(
        _$HadithFlashcardModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'hadithNarratorName': instance.hadithNarratorName,
      'hadithNumber': instance.hadithNumber,
      'arab': instance.arab,
      'translation': instance.translation,
      'interval': instance.interval,
      'repetition': instance.repetition,
      'easeFactor': instance.easeFactor,
      'reviewedDate': instance.reviewedDate.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
