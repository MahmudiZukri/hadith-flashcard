import 'package:injectable/injectable.dart';

abstract class Env {
  String get hadithFlascardBaseUrl;
}

@Injectable(as: Env)
@Environment(Environment.prod)
class EnvProd extends Env {
  @override
  String get hadithFlascardBaseUrl => 'https://hadis-api-id.vercel.app/';
}

// @Injectable(as: Env)
// @Environment(Environment.dev)
// class EnvDev extends Env {
//   @override
//   String get hadithFlascardBaseUrl => 'https://hadis-api-id.vercel.app/';
// }
