import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.color, required this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(315, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      onPressed: onPressed,
      icon: FaIcon(
        icon,
        color: color,
      ),
      label: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          fontFamily: "assets/fonts/Satoshi-Bold.otf",
          height: 1.2,
        ),
      ),
      
    );
  }
}
