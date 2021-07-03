import 'package:firstapp/components/sidebar_row.dart';
import 'package:firstapp/model/sidebar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile2.jpg'),
                  radius: 28.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rafikul Islam Khan",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("Pro User ⚡️"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(
              item: sidebarItem[0],
            ),
            SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(height: 32.0),
            Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Log Out",
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
