part of 'services.dart';

class HadithFlashcardServices {
  static final CollectionReference<Map<String, dynamic>>
      _hadithFlashcardCollection =
      FirebaseFirestore.instance.collection('flashcard');

  static Future<void> saveFlashcard({
    required String userID,
    required HadithFlashcardModel flashcard,
  }) async {
    await _hadithFlashcardCollection.doc('$userID${flashcard.answer}').set(
      {
        'userID': userID,
        'question': flashcard.question,
        'answer': flashcard.answer,
        'translation': flashcard.translation,
        'repetition': flashcard.repetition ?? 0,
        'interval': flashcard.interval ?? 0,
        'easeFactor': flashcard.easeFactor ?? 0,
        'reviewedDate': flashcard.reviewedDate.millisecondsSinceEpoch,
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
          question: document.data()['question'],
          answer: document.data()['answer'],
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
