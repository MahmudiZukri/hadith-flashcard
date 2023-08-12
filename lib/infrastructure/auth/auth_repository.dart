import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/infrastructure/app_user/model/app_user_model.dart';
import 'package:hadith_flashcard/infrastructure/core/extensions/extensions.dart';
import 'package:hadith_flashcard/infrastructure/core/services/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
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
      // uid and email automatically passed
      AppUserModel user = credential.user!.convertToAppUser(
        name: name,
      );

      // add to firestore
      try {
        await UserServices.addUser(user);
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
          message: 'Something went wrong in auth repository',
        ),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.platformException(
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
  Future<Either<CommonFailures, Unit>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await IAuthRepository.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user != null) {
        return right(
          unit,
        );
      } else {
        return left(
          const CommonFailures.other(
            message: 'Sign In Failed',
          ),
        );
      }
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.platformException(
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

  @override
  Future<Either<CommonFailures, Unit>> signOut() async {
    try {
      await IAuthRepository.auth.signOut();
      return (right(
        unit,
      ));
    } catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<CommonFailures, Unit>> resetPassword({
    required String email,
  }) async {
    try {
      await IAuthRepository.auth.sendPasswordResetEmail(
        email: email,
      );
      return (right(
        unit,
      ));
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.platformException(
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
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      );
    }
  }
}
