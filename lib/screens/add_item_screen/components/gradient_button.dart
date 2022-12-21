import 'package:flutter/material.dart';

import '../../../utils/constants.dart';


class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          314,
          65,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        padding: const EdgeInsets.all(0.0),
      ),
      onPressed: () {},
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors1,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 65,
            maxWidth: 314,
          ),
          alignment: Alignment.center,
          child: const Text(
            "ADD ITEM",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              fontFamily: "assets/fonts/Satoshi-Bold.otf",
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

