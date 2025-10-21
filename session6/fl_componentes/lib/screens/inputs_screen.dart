import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs y Fomrs')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                helperText: 'Solo letras',
                hintText: 'Nombre del usuario',
                //counterText: 'Almenos 3 letras',
              ),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Apellido',
                helperText: 'Solo letras',
                hintText: 'Apellido del usuario',
              ),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),

              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
