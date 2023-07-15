import 'package:get_it/get_it.dart';
import 'package:hadith_flashcard/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env) {
  getIt.init(
    environment: env,
  );
}
