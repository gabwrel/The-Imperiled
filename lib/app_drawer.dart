import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFc1ff72),
            height: 80,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.jpg',
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'The Imperiled',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF191c44),
                    ),
                  ),
                ],
              ),
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
