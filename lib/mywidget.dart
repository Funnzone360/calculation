import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color containercolor;
  final VoidCallback onbtnpress;
  const Mybutton({
    super.key,
    required this.title,
    required this.containercolor,
    required this.onbtnpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onbtnpress,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: containercolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          "$title",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
