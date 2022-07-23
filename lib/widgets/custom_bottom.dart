import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomBotton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 50,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.lightBlue, fontSize: 25),
        )
      ],
    );
  }
}
