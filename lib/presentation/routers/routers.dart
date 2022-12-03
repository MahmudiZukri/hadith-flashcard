import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hadith_flashcard/presentation/pages/auth/sign_up_page.dart';

part 'routers.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignUpPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
