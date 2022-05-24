import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem({
    Key? key,
    required this.icon,
    required this.label,
    this.selected = false,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 30.0,
          width: 7.0,
          margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: selected ? backgroundPurple : primaryBackgroundColorWhite,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(7.0),
              bottomRight: Radius.circular(7.0),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 0.0),
            decoration: BoxDecoration(
              color: selected ? backgroundPurple : primaryBackgroundColorWhite,
              borderRadius: const BorderRadius.all(
                Radius.circular(7.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Icon(
                    icon,
                    color: selected
                        ? primaryBackgroundColorWhite
                        : backgroundPurple,
                    size: 20.0,
                  ),
                ),
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    color: selected
                        ? primaryBackgroundColorWhite
                        : const Color.fromARGB(255, 126, 123, 123),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
