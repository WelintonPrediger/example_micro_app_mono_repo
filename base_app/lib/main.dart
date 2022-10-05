import 'package:common_dependencies/main.dart';
import 'package:core/app/app_module.dart';
import 'package:core/app/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}