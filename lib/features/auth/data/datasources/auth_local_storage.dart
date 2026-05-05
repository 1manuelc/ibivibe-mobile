import 'package:ibiapabaapp/features/auth/domain/entities/account.dart';
import 'package:ibiapabaapp/features/auth/infra/models/account_model.dart';

abstract class AuthLocalStorage {
  Future<void> saveAccount(Account account);
  Future<AccountModel?> getCachedAccount();
  Future<void> clearAccount();
}
