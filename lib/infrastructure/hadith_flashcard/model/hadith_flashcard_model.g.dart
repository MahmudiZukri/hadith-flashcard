// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_flashcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HadithFlashcardModel _$$_HadithFlashcardModelFromJson(
        Map<String, dynamic> json) =>
    _$_HadithFlashcardModel(
      hadithNarratorName: json['hadithNarratorName'] as String,
      hadithNumber: json['hadithNumber'] as int,
      question: json['question'] as String,
      answer: json['answer'] as String,
      translation: json['translation'] as String,
      interval: json['interval'] as int,
      repetition: json['repetition'] as int,
      easeFactor: (json['easeFactor'] as num).toDouble(),
      reviewedDate: DateTime.parse(json['reviewedDate'] as String),
    );

Map<String, dynamic> _$$_HadithFlashcardModelToJson(
        _$_HadithFlashcardModel instance) =>
    <String, dynamic>{
      'hadithNarratorName': instance.hadithNarratorName,
      'hadithNumber': instance.hadithNumber,
      'question': instance.question,
      'answer': instance.answer,
      'translation': instance.translation,
      'interval': instance.interval,
      'repetition': instance.repetition,
      'easeFactor': instance.easeFactor,
      'reviewedDate': instance.reviewedDate.toIso8601String(),
    };
