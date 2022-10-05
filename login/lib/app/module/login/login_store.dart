import 'package:common_dependencies/main.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;
abstract class LoginStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() => value++;

}