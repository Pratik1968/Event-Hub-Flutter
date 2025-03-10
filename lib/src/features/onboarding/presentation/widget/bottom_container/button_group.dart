import 'package:event_hub/src/core/router/route_utils.dart';
import 'package:event_hub/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:event_hub/src/features/onboarding/presentation/widget/bottom_container/tab_group_widget.dart';
import 'package:event_hub/src/shared/constant/color.dart';
import 'package:event_hub/src/shared/text/app_text_18.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ButtonGroup extends StatelessWidget{
  const ButtonGroup({super.key});
  
  @override
  Widget build(BuildContext context) {
    return
            BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => {
            context.go(AppRoutes.signIn.toPath)
          },
            child: Opacity(
              opacity: 0.2,
              child: AppText18("Skip",fontWeight: FontWeight.w500,color:AppColor.white ,),
            ),
          ),
        TabWidgetGroup(activeTab:state.activeTab),
            
          
           TextButton(child: AppText18("Next",fontWeight: FontWeight.w500,color: AppColor.white,),onPressed: () {
           if(state.activeTab.index== ActiveTabType.values.length-1){
            context.go(AppRoutes.signIn.toPath);
           return;
           }
            context.read<OnboardingCubit>().nextPage();
           },)
        ],
      );
            }
    );
  }
}
