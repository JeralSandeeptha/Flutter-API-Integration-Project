import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  UserRow({
    super.key,
    required this.size,
    required this.title,
    required this.value,
  });

  final Size size;
  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(title, style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold
          ),), Text(value)],
        ),
      ),
    );
  }
}
