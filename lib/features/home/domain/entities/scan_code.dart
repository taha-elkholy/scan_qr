import 'package:equatable/equatable.dart';

class ScanCode extends Equatable {
  final String code;
  final int id;
  final int scannerId;

  const ScanCode({
    required this.code,
    required this.id,
    required this.scannerId,
  });

  @override
  List<Object?> get props => [
        code,
        id,
        scannerId,
      ];
}
