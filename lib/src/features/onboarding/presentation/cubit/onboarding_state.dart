// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'onboarding_cubit.dart';

enum ActiveTabType {
homeScreen,
scheduleScreen,
mapScreen;

}


class OnboardingState {
  final ActiveTabType activeTab;
  OnboardingState({
     this.activeTab=ActiveTabType.homeScreen,
  });

  OnboardingState copyWith({
    ActiveTabType? activeTab,
  }) {
    return OnboardingState(
      activeTab: activeTab ?? this.activeTab,
    );
  }

  @override
  bool operator ==(covariant OnboardingState other) {
    if (identical(this, other)) return true;
  
    return 
      other.activeTab == activeTab;
  }

  @override
  int get hashCode => activeTab.hashCode;
}
