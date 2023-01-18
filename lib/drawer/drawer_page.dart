import 'package:drawer/drawer/custom_drawer_header.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'custom_user_info.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        width: _isCollapsed ? 300 : 70,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(20, 20, 20, 1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomDrawerHeader(isCollapsed: _isCollapsed),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.home_outlined,
              title: 'Home',
              onTap: () {},
              infoCount: 0,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.calendar_today,
              title: 'Calender',
              infoCount: 0,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.pin_drop,
              title: 'Destinations',
              infoCount: 0,
              doHaveMoreOptions: Icons.arrow_forward_ios,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.message_rounded,
              title: 'Messages',
              infoCount: 8,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.cloud,
              title: 'Weather',
              infoCount: 0,
              doHaveMoreOptions: Icons.arrow_forward_ios,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.airplane_ticket,
              title: 'Flights',
              infoCount: 0,
              doHaveMoreOptions: Icons.arrow_forward_ios,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const Spacer(),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.notifications,
              title: 'Notifications',
              infoCount: 2,
            ),
            CustomListTile(
              isCollapsed: _isCollapsed,
              iconData: Icons.settings,
              title: 'Settings',
              infoCount: 0,
            ),
            const SizedBox(height: 10),
            CustomUserInfo(isCollapse: _isCollapsed,),

            Align(
              alignment:
                  _isCollapsed ? Alignment.bottomRight : Alignment.bottomCenter,
              child: IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  _isCollapsed ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                ),
                onPressed: () {
                  setState(() {
                    _isCollapsed = !_isCollapsed; // true = false // false true
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
