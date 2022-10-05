import 'package:common_dependencies/main.dart';
import 'package:login/app/module/login/_export.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const LoginPage())
  ];

}