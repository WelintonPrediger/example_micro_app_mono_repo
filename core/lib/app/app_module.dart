import 'package:common_dependencies/main.dart';
import 'package:home/app/module/home/_export.dart';
import 'package:login/app/module/login/_export.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule())
  ];

}