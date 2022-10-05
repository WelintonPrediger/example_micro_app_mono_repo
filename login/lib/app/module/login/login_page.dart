import 'package:common/common.dart';
import 'package:common_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:login/app/module/login/_export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginStore = Modular.get<LoginStore>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro App Login'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 20.0),
            child: Observer(builder: (context) => Text('${loginStore.value}')),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('Login', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ComponentTextFormField(
                icon: Icons.person,
                controller: usernameController,
                hint: 'Usuário',
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ComponentTextFormField(
                icon: Icons.lock,
                controller: passwordController,
                hint: 'Senha',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Modular.to.pushNamed('/home/'),
              child: const Text('Entrar')
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginStore.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
