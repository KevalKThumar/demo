// ignore: file_names
import 'package:flutter/material.dart';
import 'input_page.dart';

// ignore: camel_case_types
class bottomButton extends StatelessWidget {
  const bottomButton({
    super.key,
    required this.onpress,
    // ignore: non_constant_identifier_names
    required this.Buttontitle,
  });

  final VoidCallback onpress;
  // ignore: non_constant_identifier_names
  final String Buttontitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BottomContainerColor,
      margin: const EdgeInsets.only(top: 1.0),
      padding: const EdgeInsets.only(bottom: 2.0),
      height: BottomContainerHeight,
      width: double.infinity,
      child: GestureDetector(
        onTap: onpress,
        child: Center(
          child: Text(
            Buttontitle,
            style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
