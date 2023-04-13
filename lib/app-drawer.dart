import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.jpg',
                  height: 50, // adjust the height as needed
                ),
                SizedBox(
                    width: 10), // add some spacing between the logo and text
                Text(
                  'The Imperiled',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
