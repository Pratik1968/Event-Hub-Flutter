import 'package:event_hub/src/core/router/route_utils.dart';
import 'package:event_hub/src/features/auth/presentation/page/sign_in.dart';
import 'package:event_hub/src/features/onboarding/presentation/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.onboarding.toPath,
  routes:[
GoRoute(
  path:AppRoutes.onboarding.toPath,
  name:AppRoutes.onboarding.toName,
  builder:(context,state)=>const OnboardingPage()
  ),
  GoRoute(
    path: AppRoutes.signIn.toPath,
    name: AppRoutes.signIn.toName,
    builder: (context, state) => const SignInPage(),
    )
  ]
);