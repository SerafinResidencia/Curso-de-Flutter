import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [_PurpleBox()]),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4, // 40% de la pantalla
      decoration: _purpleBackground(),
      child: Stack(
        children: const [
          Positioned(top: 90, left: 30, child: _Bubble()),
          Positioned(top: 18, left: 62, child: _Bubble()),
          Positioned(top: -15, left: 30, child: _Bubble()),
          Positioned(bottom: -90, right: -30, child: _Bubble()),
          Positioned(bottom: 90, right: 150, child: _Bubble()),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(199, 84, 12, 253),
          Color.fromARGB(253, 34, 86, 199),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  const _Bubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // fuerza círculo
        color: const Color.fromARGB(13, 255, 255, 255), // opacidad ~5%
      ),
    );
  }
}
