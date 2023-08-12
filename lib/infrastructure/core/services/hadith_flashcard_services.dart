part of 'services.dart';

class HadithFlashcardServices {
  static final CollectionReference<Map<String, dynamic>>
      _hadithFlashcardCollection =
      FirebaseFirestore.instance.collection('flashcard');

  static Future<void> saveFlashcard({
    required String userId,
    required HadithFlashcardModel flashcard,
  }) async {
    await _hadithFlashcardCollection.doc('$userId${flashcard.answer}').set(
      {
        'userID': userId,
        'question': flashcard.question,
        'answer': flashcard.answer,
        'repetition': flashcard.repetition,
        'interval': flashcard.interval,
        'easeFactor': flashcard.easeFactor,
        'reviewedDate': flashcard.reviewedDate.millisecondsSinceEpoch,
      },
    );
  }

  static Future<List<HadithFlashcardModel>> getFlashcard({
    required String userId,
  }) async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _hadithFlashcardCollection.get();

    var documents = snapshot.docs.where(
      (doc) => doc.data()['userId'] == userId,
    );

    List<HadithFlashcardModel> flashcards = [];

    for (var document in documents) {
      flashcards.add(
        HadithFlashcardModel(
          question: document.data()['question'],
          answer: document.data()['answer'],
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
