import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/app_user/app_user.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/infrastructure/app_user/model/app_user_model.dart';
import 'package:hadith_flashcard/infrastructure/core/services/services.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.map(
          loadUser: (e) async {
            final user = await UserServices.getUser(
              e.userID.getOrCrash(),
            ).then(
              (value) => value.toDomain(),
            );

            emit(
              state.copyWith(
                user: user,
              ),
            );
          },
        );
      },
    );
  }
}
