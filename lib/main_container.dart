import 'package:flutter/material.dart';
import 'colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.845 - 20.0, // padding
      color: backgroundBlue,
    );
  }
}
