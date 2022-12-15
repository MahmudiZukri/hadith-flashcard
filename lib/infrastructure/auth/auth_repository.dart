import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/app_user/app_user.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/infrastructure/app_user/model/app_user_model.dart';
import 'package:hadith_flashcard/infrastructure/core/extensions/extensions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final userCollection = FirebaseFirestore.instance.collection('users');

  @override
  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final credential =
          await IAuthRepository.auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      AppUserModel user = credential.user!.convertToAppUser(
        name: name,
      );

      //add to firestore
      try {
        await userCollection.doc(user.id).set(
          {
            'email': user.email,
            'name': user.name,
          },
        );
      } catch (e, stackTrace) {
        debugPrint('1------- $stackTrace -------1');
        return left(
          CommonFailures.other(
            message: e.toString(),
          ),
        );
      }

      if (credential.user != null) {
        return right(
          unit,
        );
      } else if (credential.user == null) {
        return left(
          const CommonFailures.other(
            message: 'User Not Found',
          ),
        );
      }
      return left(
        const CommonFailures.handledByFirebase(
          message: 'Something went wrong in repository',
        ),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('3------- $stackTrace -------3');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('4------- $stackTrace -------4');

      return left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<CommonFailures, AppUser>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await IAuthRepository.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final String userID = credential.user!.uid;

      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await userCollection.doc(userID).get();

      return right(
        AppUserModel(
                id: userID,
                email: snapshot.data()!['email'],
                name: snapshot.data()!['name'])
            .toDomain(),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('3------- $stackTrace -------3');
      return (left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      ));
    }
  }
}
