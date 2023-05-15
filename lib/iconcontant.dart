import 'package:flutter/material.dart';

class IconContant extends StatelessWidget {
  const IconContant({super.key, required this.icon, required this.lable});

  final IconData icon;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          lable,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(255, 114, 109, 109),
          ),
        ),
      ],
    );
  }
}
