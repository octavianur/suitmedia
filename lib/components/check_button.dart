import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  final Function()? onTap;

  const CheckButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xff2B637B),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "CHECK",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}