import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColorWhite,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          60.0,
        ),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Vaccinator",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.60,
        backgroundColor: Colors.transparent,
        child: const SideBar(),
      ),
      body: Container(),
    );
  }
}
