import 'dart:async';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/failures/network/network_failure.dart';
import 'package:hadith_flashcard/domain/core/interfaces/i_network_service.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/interfaces/i_hadith_flashcard_repository.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/interfaces/i_hadith_narrator_repository.dart';
import 'package:hadith_flashcard/infrastructure/core/network_service_type.dart';
import 'package:hadith_flashcard/infrastructure/core/services/services.dart';
import 'package:hadith_flashcard/infrastructure/core/urls.dart';
import 'package:hadith_flashcard/infrastructure/hadith_flashcard/model/hadith_flashcard_model.dart';
import 'package:hadith_flashcard/infrastructure/hadith_narrator/model/hadith_narrator_model.dart';
import 'package:injectable/injectable.dart';

part 'hadith_narrator/hadith_narrator_repository.dart';
part 'hadith_flashcard/hadith_flashcard_repository.dart';
