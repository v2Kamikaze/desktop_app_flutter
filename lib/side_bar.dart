import 'package:flutter/material.dart';
import 'package:windows_app/side_bar_list.dart';

import 'colors.dart';
import 'logo.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: secondaryBackgroundColorWhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 15.0),
            Logo(size: 55.0),
            SizedBox(height: 20.0),
            SideBarList(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
