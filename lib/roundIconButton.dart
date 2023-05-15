// ignore: file_names
import 'package:flutter/material.dart';


// ignore: camel_case_types
class roundIconButton extends StatelessWidget {
  const roundIconButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 65.0,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.grey,
      child: Icon(icon),
    );
  }
}
