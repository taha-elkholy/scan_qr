import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scan_qr/features/login/domain/entities/user.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates with _$LoginStates {
  const factory LoginStates.initial() = LoginInitialState;

  const factory LoginStates.loading() = LoginLoadingState;

  const factory LoginStates.loaded({required User user}) = LoginLoadedState;

  const factory LoginStates.error({required String errorMessage}) =
      LoginErrorState;
}
