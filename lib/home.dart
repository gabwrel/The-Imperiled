import 'package:flutter/material.dart';
import 'package:flutter_layout/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191c44),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/logo.jpg',
                  height: 60,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                AppBar(
                  backgroundColor: Color(0xFFff66c4),
                  title: Text(
                    'The Imperiled',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              ],
            ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                ),
              ),
            ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    padding: EdgeInsets.all(10),
                    children: [
                      _buildCollection('assets/images/Collection 1.jpg', 'Collection 1', '5 items'),
                      _buildCollection('assets/images/Collection 2.jpg', 'Collection 2', '10 items'),
                      _buildCollection('assets/images/Collection 3.jpg', 'Collection 3', '15 items'),
                    ],
                  ),
                ),
              ],
            ),
        ),
      drawer: AppDrawer(),
    );
  }

  Widget _buildCollection(String image, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}