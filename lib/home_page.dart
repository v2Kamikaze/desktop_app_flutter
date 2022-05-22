import 'package:flutter/material.dart';
import 'colors.dart';
import 'main_container.dart';
import 'side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      body: Row(
        children: const [
          SideBar(),
          MainContainer(),
        ],
      ),
    );
  }
}
