import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/features/home/domain/use_cases/scan_use_case.dart';
import 'package:scan_qr/features/home/presentation/cubit/home_states.dart';

@injectable
class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(
    this._scanUseCase,
  ) : super(const HomeStates.initial());

  final ScanUseCase _scanUseCase;

  Future<void> scan({required String code}) async {
    emit(const HomeStates.loading());
    final result = await _scanUseCase(code);
    emit(
      result.fold(
        (failure) => HomeStates.error(
          errorMessage: failure.errorMessage,
        ),
        (code) => HomeStates.loaded(code: code),
      ),
    );
  }
}
