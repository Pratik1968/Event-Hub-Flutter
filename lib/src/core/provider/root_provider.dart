// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_hub/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootProvider extends StatelessWidget {
  final Widget child;
  const RootProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_)=>OnboardingCubit(),)
    ],child:child,);
  }

}
