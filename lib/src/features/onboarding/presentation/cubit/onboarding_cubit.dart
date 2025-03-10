import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState());
  void nextPage(){
   

    final nextTab = ActiveTabType.values[state.activeTab.index+1];
    emit(state.copyWith(activeTab: nextTab));
  }
  int getTotalPage(){
    return ActiveTabType.values.length;
  }

}
