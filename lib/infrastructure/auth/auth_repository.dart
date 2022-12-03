import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/auth/failures/auth_failures.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user != null) {
        return right(
          unit,
        );
      } else if (credential.user == null) {
        return left(
          const AuthFailure.other(
            message: 'User Not Found (NULL)',
          ),
        );
      }
      return left(
        const AuthFailure.other(
          message: 'Something went wrong in repositoy',
        ),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');
      return left(
        AuthFailure.other(
          message: e.message ?? 'yey',
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');
      return left(
        AuthFailure.other(
          message: e.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');

      return left(
        AuthFailure.other(
          message: e.toString(),
        ),
      );
    }
  }
}
