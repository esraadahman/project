part of 'onboarding_controller_cubit.dart';

@immutable
sealed class OnboardingControllerState {}

class OnboardingControllerInitial extends OnboardingControllerState {}

class OnboardingPageChange extends OnboardingControllerState {}
