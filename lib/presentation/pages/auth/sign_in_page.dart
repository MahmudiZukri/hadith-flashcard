import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey formKey = GlobalKey();

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
          children: [
            const SizedBox(height: 40.0),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: defaultBorderRadius(),
                      ),
                    ),
                    onChanged: (val) {
                      //tempDebugPrint
                      debugPrint(val);
                      // context.read<AuthBloc>().add(
                      //       AuthEvent.emailChanged(
                      //         emailStr: val,
                      //       ),
                      //     );
                    },
                    // validator: (_) => state.email.getFoldValidator(
                    //   exceptEmpty: true,
                    // ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    // controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: defaultBorderRadius()),
                    ),
                    onChanged: (val) {
                      //tempDebugPrint
                      debugPrint(val);
                      // context.read<AuthBloc>().add(
                      //       AuthEvent.passwordChanged(
                      //         passwordStr: val,
                      //       ),
                      //     );
                    },
                    // validator: (_) => state.password.getFoldValidator(
                    //   exceptEmpty: true,
                    // ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            // state.onLoading
            //     ? const CircularProgressIndicator()
            //     :
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  screenWidth(context),
                  46.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: defaultBorderRadius(),
                ),
                backgroundColor:
                    //  state.email == EmailAddress('') ||
                    //         state.password == Password('')
                    //     ? Colors.grey
                    //     :
                    Colors.blue,
              ),
              onPressed:
                  //  state.email == EmailAddress('') ||
                  //         state.password == Password('')
                  //     ?
                  () {}
              // : () {
              //     context.read<AuthBloc>().add(
              //           const AuthEvent.signUp(),
              //         );
              //   },
              ,
              child: const Text(
                'Sign In',
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                context.go('/signup');
              },
              child: const Text(
                'Sign Up',
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
