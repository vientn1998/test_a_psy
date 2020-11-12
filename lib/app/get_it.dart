import 'package:get_it/get_it.dart';
import 'package:shapee_project/providers/account/account_provider.dart';

final GetIt getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerSingleton<AccountProvider>(AccountProvider());
}