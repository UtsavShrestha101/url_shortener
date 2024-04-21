part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ApiRequestStates.initial) ApiRequestStates? status,
    @Default("") String generatedUrl,
    String? msg,
  }) = _HomeState;
}
