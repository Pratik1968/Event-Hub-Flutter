import 'package:event_hub/src/core/router/route_utils.dart';
import 'package:event_hub/src/features/onboarding/onboarding-1/onboarding_1.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.onboarding.toPath,
  routes:[
GoRoute(
  path:AppRoutes.onboarding.toPath,
  name:AppRoutes.onboarding.toName,
  builder:(context,state)=>const Onboarding1()
  ),
  ]
);