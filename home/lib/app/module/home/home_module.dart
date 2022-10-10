import 'package:common_dependencies/main.dart';
import 'package:home/app/module/home/_export.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<HomeStore>((i) => HomeStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const HomePage())
  ];

}