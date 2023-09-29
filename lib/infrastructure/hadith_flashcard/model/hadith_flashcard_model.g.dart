// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_flashcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithFlashcardModelImpl _$$HadithFlashcardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithFlashcardModelImpl(
      hadithNarratorName: json['hadithNarratorName'] as String,
      hadithNumber: json['hadithNumber'] as int,
      arab: json['arab'] as String,
      translation: json['translation'] as String,
      interval: json['interval'] as int,
      repetition: json['repetition'] as int,
      easeFactor: (json['easeFactor'] as num).toDouble(),
      reviewedDate: DateTime.parse(json['reviewedDate'] as String),
    );

Map<String, dynamic> _$$HadithFlashcardModelImplToJson(
        _$HadithFlashcardModelImpl instance) =>
    <String, dynamic>{
      'hadithNarratorName': instance.hadithNarratorName,
      'hadithNumber': instance.hadithNumber,
      'arab': instance.arab,
      'translation': instance.translation,
      'interval': instance.interval,
      'repetition': instance.repetition,
      'easeFactor': instance.easeFactor,
      'reviewedDate': instance.reviewedDate.toIso8601String(),
    };
