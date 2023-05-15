import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class res extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const res({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
