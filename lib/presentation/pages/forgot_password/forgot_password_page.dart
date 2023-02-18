import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadith_flashcard/application/page/page_bloc.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/presentation/core/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: GestureDetector(
                onTap: () {
                  context.read<PageBloc>().add(
                        GotoSignInPage(),
                      );
                },
                child: Row(
                  children: [
                    const SizedBox(width: defaultMargin),
                    const Icon(MdiIcons.arrowLeft, size: 26.0),
                    const SizedBox(width: 6.0),
                    Text(
                      'Back',
                      style: blackTextFont.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset Password',
                      style: blackTextFont.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Please provide us with the email address associated with your account. Once we verify your email, we will send you detailed instructions on how to reset your password securely.',
                    ),
                    const SizedBox(height: 20.0),
                    const Text('Email address'),
                    const SizedBox(height: 10.0),
                    const CustomTextFormField(),
                    const SizedBox(height: 16.0),
                    const Spacer(),
                    CustomElevatedButton(
                      text: 'Reset',
                      backgroundColor: primaryColor,
                      textStyle: whiteTextFont.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: screenHeight(context) / 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
