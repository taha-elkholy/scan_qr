import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scan_qr/features/home/domain/entities/scan_code.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = HomeInitialState;

  const factory HomeStates.loading() = HomeLoadingState;

  const factory HomeStates.loaded({required ScanCode code}) = HomeLoadedState;

  const factory HomeStates.error({required String errorMessage}) =
      HomeErrorState;
}
