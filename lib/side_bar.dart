import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.155,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(height: 25.0),
            Container(
              height: 34,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 17.0,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 0.2),
                    child: Text(
                      "Home",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FaIcon(
          FontAwesomeIcons.truckFast,
          size: 25.0,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "TRACK",
                style: GoogleFonts.koulen(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  letterSpacing: 5.0,
                ),
              ),
              TextSpan(
                text: "THOR",
                style: GoogleFonts.koulen(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  letterSpacing: 5.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
