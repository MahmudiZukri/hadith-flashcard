import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/infrastructure/app_user/model/app_user_model.dart';
import 'package:hadith_flashcard/infrastructure/core/extensions/extensions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      AppUserModel user = credential.user!.convertToAppUser(name: name);

      if (credential.user != null) {
        return right(
          unit,
        );
      } else if (credential.user == null) {
        return left(
          const CommonFailures.handledByFirebase(
            message: 'User Not Found (NULL)',
          ),
        );
      }
      return left(
        const CommonFailures.handledByFirebase(
          message: 'Something went wrong in repositoy',
        ),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message ?? 'Platform Exception',
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');
      return left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');

      return left(
        CommonFailures.handledByFirebase(
          message: e.toString(),
        ),
      );
    }
  }
}
