import 'package:common_dependencies/main.dart';
import 'package:core/app/app_module.dart';
import 'package:core/app/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const SettingsPage())
  ];
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red
    );
  }
}
