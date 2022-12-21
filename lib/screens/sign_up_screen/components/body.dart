import 'package:flutter/material.dart';
import 'package:flutter_assignment/providers/google_sign_in_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'sign_up_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, size: 30),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Let's get started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w900,
                ).fontFamily,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          SignUpButton(
              onPressed: () {},
              title: "Continue with Facebook",
              icon: FontAwesomeIcons.facebookF,
              color: Colors.blue,),
          const SizedBox(
            height: 20,
          ),
          SignUpButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSigninProvider>(context, listen: false);
                provider.googleLogin();
              },
              title: "Continue with Google",
              icon: FontAwesomeIcons.google,
              color: Colors.red[400]!),
          const SizedBox(
            height: 20,
          ),
          SignUpButton(
            onPressed: () {},
            title: "Continue with Apple",
            icon: FontAwesomeIcons.apple,
            color: Colors.white,
          ),
          const SizedBox(
            height: 120,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  17,
                ),
              ),
              minimumSize: const Size(
                310,
                65,
              ),
              backgroundColor: Colors.white,
            ),
            child: const Text(
              "Create Account",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "assets/fonts/Satoshi-Bold.otf",
                fontSize: 24,
                fontWeight: FontWeight.w900,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w400,
                  ).fontFamily,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                    ).fontFamily,
                    color: const Color(0xFFF99035),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
