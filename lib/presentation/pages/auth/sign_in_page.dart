import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
      ),
      body: Container(
        width: screenWidth(context),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.go('/signup');
              },
              child: const Text(
                'Sign Up',
              ),
            )
          ],
        ),
      ),
    );
  }
}
