
import 'package:scan_qr/features/login/data/models/user/user_model.dart';
import 'package:scan_qr/features/login/domain/entities/user.dart';

extension UserMapper on UserData {
  User get fromModel => User(
        name: name,
        email: email,
      );
}
