import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class SideBarUploadArea extends StatelessWidget {
  const SideBarUploadArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          "assets/covid-nurse.gif",
          height: 180.0,
        ),
        Container(
          height: 65.0,
          margin: const EdgeInsets.only(
            left: 22.0,
            right: 15.0,
          ),
          decoration: const BoxDecoration(
            color: backgroundPurple,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          child: const UploadCard(),
        )
      ],
    );
  }
}

class UploadCard extends StatelessWidget {
  const UploadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 35.0,
          width: 35.0,
          margin: const EdgeInsets.only(left: 15.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.3),
          ),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.arrowUpFromBracket,
              color: Colors.white,
              size: 15.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "Upload new\nresearch",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
