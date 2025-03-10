enum AppRoutes {
  onboarding('onboarding'),
  signIn('signIn');
  final String  value;
  const AppRoutes(this.value);
}


extension RoutingExt on AppRoutes{
  String get toName => value;
  String get toPath {
switch(this){
  case AppRoutes.onboarding:
    return '/onboarding';
  case AppRoutes.signIn:
    return '/signIn';
}
  }

}