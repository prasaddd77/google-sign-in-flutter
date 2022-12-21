import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/add_item_screen/components/list_card_item.dart';
import 'package:flutter_assignment/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gradient_button.dart';
import 'gradient_text.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  RadioButtonValue _value = RadioButtonValue.first;

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF171817),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            leading: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
            backgroundColor: Colors.black,
            title: Text(
              "Engelszell Nivard",
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                ).fontFamily,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 185,
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      ListCardItem(items: items[index]),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Stift Engelszell Nivard",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily:
                        GoogleFonts.urbanist(fontWeight: FontWeight.w700)
                            .fontFamily,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  const StarIcon(
                    color: Color(0xFFFFE600),
                  ),
                  const StarIcon(
                    color: Color(0xFFFFE600),
                  ),
                  const StarIcon(
                    color: Color(0xFFFFE600),
                  ),
                  const StarIcon(
                    color: Color(0xFFFFE600),
                  ),
                  const StarIcon(
                    color: Color(0xFFB3B3B3),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "92 reviews",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily:
                          GoogleFonts.urbanist(fontWeight: FontWeight.w400)
                              .fontFamily,
                    ),
                  ),
                  const Spacer(),
                  const GradientText(
                    text: "view details",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Row(
                children: [
                  Text(
                    "Type/Flavour 1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily:
                            GoogleFonts.urbanist(fontWeight: FontWeight.w400)
                                .fontFamily),
                  ),
                  const Spacer(),
                  Text(
                    "₹ 999",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily:
                            GoogleFonts.urbanist(fontWeight: FontWeight.w500)
                                .fontFamily),
                  ),
                  Radio<RadioButtonValue>(
                      fillColor: MaterialStateProperty.all(
                        const Color(0xFFFFC400),
                      ),
                      value: RadioButtonValue.first,
                      groupValue: _value,
                      onChanged: (RadioButtonValue? value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Row(
                children: [
                  Text(
                    "Type/Flavour 2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily:
                            GoogleFonts.urbanist(fontWeight: FontWeight.w400)
                                .fontFamily),
                  ),
                  const Spacer(),
                  Text(
                    "₹ 1099",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily:
                            GoogleFonts.urbanist(fontWeight: FontWeight.w500)
                                .fontFamily),
                  ),
                  Radio<RadioButtonValue>(
                      fillColor: MaterialStateProperty.all(
                        const Color(0xFFFFC400),
                      ),
                      value: RadioButtonValue.second,
                      groupValue: _value,
                      onChanged: (RadioButtonValue? value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            const GradientButton(),
            const Spacer(),
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      selectedItemColor: const Color(0xFFF99035),
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.heart,
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
          ),
          label: "",
        ),
      ],
      iconSize: 40,
    );
  }
}

class StarIcon extends StatelessWidget {
  const StarIcon({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
    );
  }
}
