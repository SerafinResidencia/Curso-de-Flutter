import 'package:flutter/material.dart';
import 'package:productos_app/ui/input_decorations.dart';
import 'package:productos_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              height: size.height, // 🔹 limita la altura al tamaño de pantalla
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 250),
                  CardContainer(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Login',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 30),
                        const _LoginForm(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Crear una nueva cuenta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'example@gmail.com',
              labelText: 'Correo electrónico',
              prefix: Icons.alternate_email_outlined,
            ),
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            decoration: InputDecorations.authInputDecoration(
              hintText: '********',
              labelText: 'Contraseña',
              prefix: Icons.lock_person_sharp,
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text(
                'Ingresar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
