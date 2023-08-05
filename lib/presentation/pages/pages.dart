import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hadith_flashcard/application/auth/auth_bloc.dart';
import 'package:hadith_flashcard/application/hadith_narrator/hadith_narrator_bloc.dart';
import 'package:hadith_flashcard/application/page/page_bloc.dart';
import 'package:hadith_flashcard/application/page_view/page_view_bloc.dart';
import 'package:hadith_flashcard/application/password_textfield/password_textfield_bloc.dart';
import 'package:hadith_flashcard/application/user/user_bloc.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';
import 'package:hadith_flashcard/injection.dart';
import 'package:hadith_flashcard/presentation/core/widgets/widgets.dart';
import 'package:hadith_flashcard/presentation/pages/forgot_password/check_email/check_email_page.dart';
import 'package:hadith_flashcard/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:hadith_flashcard/presentation/pages/home/narrator/narrator_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

part 'wrapper.dart';
part 'auth/sign_up_page.dart';
part 'auth/sign_in_page.dart';
part 'home/home_page.dart';
part 'hadith/hadith_page.dart';
