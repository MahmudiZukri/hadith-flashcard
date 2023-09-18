part of 'services.dart';

class HadithFlashcardServices {
  static final CollectionReference<Map<String, dynamic>>
      _hadithFlashcardCollection =
      FirebaseFirestore.instance.collection('flashcard');

  static Future<void> saveFlashcard({
    required String userID,
    required HadithFlashcardModel flashcard,
  }) async {
    await _hadithFlashcardCollection
        .doc('$userID${flashcard.hadithNarratorName}${flashcard.hadithNumber}')
        .set(
      {
        'userID': userID,
        'hadithNarratorName': flashcard.hadithNarratorName,
        'hadithNumber': flashcard.hadithNumber,
        'arab': flashcard.arab,
        'translation': flashcard.translation,
        'repetition': flashcard.repetition,
        'interval': flashcard.interval,
        'easeFactor': flashcard.easeFactor,
        'reviewedDate': flashcard.reviewedDate.millisecondsSinceEpoch,
      },
    ).onError(
      (error, stackTrace) {
        debugPrint(
          'stacktrace : ($stackTrace) ||  error: ($error)',
        );
      },
    );
  }

  static Future<List<HadithFlashcardModel>> getFlashcard({
    required String userID,
  }) async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _hadithFlashcardCollection.get();

    var documents = snapshot.docs.where(
      (doc) => doc.data()['userID'] == userID,
    );

    List<HadithFlashcardModel> flashcards = [];

    for (var document in documents) {
      flashcards.add(
        HadithFlashcardModel(
          hadithNarratorName: document.data()['hadithNarratorName'],
          hadithNumber: document.data()['hadithNumber'],
          arab: document.data()['arab'],
          translation: document.data()['translation'],
          repetition: (document.data()['repetition'] as num).toInt(),
          interval: (document.data()['interval'] as num).toInt(),
          easeFactor: (document.data()['easeFactor'] as num).toDouble(),
          reviewedDate: DateTime.fromMillisecondsSinceEpoch(
            document.data()['reviewedDate'],
          ),
        ),
      );
    }
    return flashcards;
  }
}
