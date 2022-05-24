import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'side_bar_upload_area.dart';
import 'side_bar_item.dart';

class SideBarList extends StatelessWidget {
  const SideBarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SideBarItem(
            icon: Icons.dashboard,
            label: "Dashboard",
            selected: true,
          ),
          SizedBox(height: 25.0),
          SideBarItem(
            icon: FontAwesomeIcons.clipboardList,
            label: "History",
          ),
          SizedBox(height: 25.0),
          SideBarItem(
            icon: FontAwesomeIcons.chartSimple,
            label: "Statistics",
          ),
          SizedBox(height: 25.0),
          SideBarItem(
            icon: FontAwesomeIcons.gear,
            label: "Settings",
          ),
          SizedBox(height: 25.0),
          SideBarItem(
            icon: FontAwesomeIcons.solidMessage,
            label: "Chat",
          ),
          SizedBox(height: 25.0),
          SideBarItem(
            icon: FontAwesomeIcons.headset,
            label: "Suport",
          ),
          SizedBox(height: 25.0),
          SideBarUploadArea()
        ],
      ),
    );
  }
}
