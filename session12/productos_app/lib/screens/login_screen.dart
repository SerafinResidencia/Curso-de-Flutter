import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 30),
                    _LoginForm(),
                  ],
                ),
              ),
            ],
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
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),

                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
                hintText: 'exaample.es@gmail.com',
                labelText: 'Correo electrónico',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.alternate_email_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
