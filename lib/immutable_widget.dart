import 'package:flutter/material.dart';
import 'dart:math' as math;

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      foregroundDecoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.colorBurn,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.blue, Colors.tealAccent],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Transform.rotate(
          angle: 180 / math.pi,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  spreadRadius: 4.0,
                  blurRadius: 15.0,
                  offset: Offset.fromDirection(1.0, 30.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: _buildShinyCircle(),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildShinyCircle() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        colors: [Colors.black, Colors.blue],
        center: Alignment(0, 0),
      ),
      boxShadow: [BoxShadow(blurRadius: 20.0)],
    ),
  );
}
