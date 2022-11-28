import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/auth/failures/auth_failures.dart';
import 'package:hadith_flashcard/domain/auth/interfaces/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<AuthFailure, bool>> signUp({
    required BuildContext context,
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
          true,
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
    } catch (e, stackTrace) {
      debugPrint('------- $stackTrace -------');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );

      return left(
        AuthFailure.other(
          message: e.toString(),
        ),
      );
    }
  }
}
