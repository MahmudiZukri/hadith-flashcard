import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial()) {
    on<GotoSignUpPage>((event, emit) => emit(
          OnSignUpPage(),
        ));
    on<GotoSignInPage>((event, emit) => emit(
          OnSignInPage(),
        ));
    on<GotoHomePage>((event, emit) => emit(
          OnHomePage(),
        ));
  }
}
