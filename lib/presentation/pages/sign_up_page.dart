import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadith_flashcard/application/bloc/auth_bloc.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/core/utils/common_utils.dart';
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
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ),
                ),
              ),
              onChanged: (val) {
                debugPrint(val);

                context.read<AuthBloc>().add(
                      AuthEvent.emailChanged(
                        email: UnemptyString(
                          val,
                        ),
                      ),
                    );
              },
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ),
                ),
              ),
              onChanged: (val) {
                debugPrint(val);

                context.read<AuthBloc>().add(
                      AuthEvent.passwordChanged(
                        password: UnemptyString(
                          val,
                        ),
                      ),
                    );
              },
            ),
            const SizedBox(height: 20.0),
            BlocListener<AuthBloc, AuthState>(
              listenWhen: (previous, current) {
                return previous.showMessage != current.showMessage;
              },
              listener: ((context, state) {
                state.optionFailureOrSuccess.match(
                  () => null,
                  (either) => either.fold(
                    (f) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 1),
                          content: Text(
                            CommonUtils.firebaseMessageSplit(
                              message: f.toString(),
                            ),
                          ),
                        ),
                      );
                    },
                    (r) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Account successfully created!',
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.onLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: state.email == UnemptyString('') ||
                                    state.password == UnemptyString('')
                                ? Colors.grey
                                : Colors.blue,
                          ),
                          onPressed: state.email == UnemptyString('') ||
                                  state.password == UnemptyString('')
                              ? () {}
                              : () {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.signUp(
                                          email: UnemptyString(
                                            emailController.text,
                                          ),
                                          password: UnemptyString(
                                            passwordController.text,
                                          ),
                                        ),
                                      );
                                },
                          child: const Text(
                            'Sign Up',
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
