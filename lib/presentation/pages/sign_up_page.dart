import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadith_flashcard/application/bloc/auth_bloc.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/injection.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: const SignUpPageScaffold(),
    );
  }
}

class SignUpPageScaffold extends StatelessWidget {
  const SignUpPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 40.0),
            TextField(
              controller: emailController,
              // style: const TextStyle(color: Colors.white),
              // obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0))),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: passwordController,
              // style: const TextStyle(color: Colors.white),
              // obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0))),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEvent.signUp(
                        context: context,
                        email: UnemptyString(emailController.text),
                        password: UnemptyString(
                          passwordController.text,
                        ),
                      ),
                    );
              },
              child: const Text(
                'Sign Up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
