import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/features/login/domain/usecases/login_use_case.dart';
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_states.dart';

@injectable
class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(
    this._loginUseCase,
  ) : super(const LoginStates.initial());

  final LoginUseCase _loginUseCase;


  Future<void> login({required LoginParam loginParam}) async {
    emit(const LoginStates.loading());
    final result = await _loginUseCase(loginParam);
    emit(
      result.fold(
        (failure) => LoginStates.error(
          errorMessage: failure.errorMessage,
        ),
        (user) => LoginStates.loaded(user: user),
      ),
    );
  }


}
