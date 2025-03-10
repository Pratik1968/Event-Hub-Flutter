import 'package:event_hub/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:event_hub/src/features/onboarding/presentation/widget/bottom_container/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OnboardingPage  extends StatefulWidget{
  
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
final List<String> onboardingIllustration = [
    'assets/images/home_screen.png',
    'assets/images/schedule_screen.png',
    'assets/images/maps_screen.png',
  ];
  final List<String> title =[
    'Explore Upcoming and Nearby Events',
    'Web Have Modern Events',
    'To Look Up More Events Nearby By Map'
  ];
  final List<String> description=[
    ' In publishing and graphic design, Lorem is a placeholder text commonly ',
    ' In publishing and graphic design, Lorem is a placeholder text commonly 2',
    ' In publishing and graphic design, Lorem is a placeholder text commonly 3'
  ];
    @override
  Widget build(BuildContext context) {
    return
Scaffold(
  body:
  BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return Stack(
    children: [
      Positioned(
        left: 42.w,
        right: 42.w,
        top: MediaQuery.of(context).padding.top +  34.5.h,
        child:  Image.asset(
              onboardingIllustration[state.activeTab.index],)
        
        ),
      
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: BottomContainer(title:title[state.activeTab.index],description:description[state.activeTab.index]))
    ],);
  }
)
    );
  }
}