part of 'enums.dart';

enum EAuthProvider { emailAndPassword, google, facebook }

extension EAuthProviderX on EAuthProvider {
  static const names = {
    EAuthProvider.emailAndPassword: 'EmailAndPassword',
    EAuthProvider.google: 'Google',
    EAuthProvider.facebook: 'Facebook',
  };

  String? get name => names[this];
}
