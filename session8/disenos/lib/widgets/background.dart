import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: AlignmentGeometry.topCenter,
      end: AlignmentGeometry.bottomCenter,
      stops: [.2, .8],
      colors: [Color(0xff2E305F), Color(0xff202333)],
    ),
  );

  Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
        Positioned(top: -100, left: -30, child: _PinkBox()),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(224, 122, 1, 188),
              Color.fromARGB(240, 166, 1, 172),
            ],
          ),
        ),
      ),
    );
  }
}
