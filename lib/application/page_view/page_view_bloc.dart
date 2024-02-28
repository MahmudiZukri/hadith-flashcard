import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'page_view_event.dart';
part 'page_view_state.dart';
part 'page_view_bloc.freezed.dart';

@injectable
class PageViewBloc extends Bloc<PageViewEvent, PageViewState> {
  PageViewBloc() : super(PageViewState.initial()) {
    on<PageViewEvent>(
      (event, emit) {
        event.map(
          pageViewChanged: (e) {
            emit(
              state.copyWith(
                pageViewIndex: e.pageViewIndex,
              ),
            );
          },
        );
      },
    );
  }
}
