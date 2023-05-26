import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_drawer.dart';
import 'details_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/model.dart';

final storage = FirebaseStorage.instance;
final storageRef = FirebaseStorage.instance.ref();
final butterfly = <Butterfly>[];

Reference getImage(String fileName) {
  return storageRef.child(fileName);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Butterfly> butterflyItems = [];
  String filterText = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    List<Butterfly> filteredButterfly =
        filterButterflyItems(); // Get the filtered list

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFff66c4),
        title: Text(
          'Butterflies',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filterText = value; // Update the filter text input
                });
              },
              decoration: InputDecoration(
                hintText: 'Seach for Butterfly',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                hintStyle: GoogleFonts.poppins(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredButterfly.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      filteredButterfly[index].name,
                      style: GoogleFonts.poppins(),
                    ),
                    leading: Image.network(
                      filteredButterfly[index].imageURL,
                      width: 100, // Set a fixed width for the image
                      height: 100, // Set a fixed height for the image
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: filteredButterfly[index].imageURL,
                            name: filteredButterfly[index].name,
                            details: filteredButterfly[index].details,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }

  List<Butterfly> filterButterflyItems() {
    if (filterText.isEmpty) {
      return butterflyItems; // Return all items if the filter text is empty
    } else {
      // Filter the items based on the filter text
      return butterflyItems.where((butterfly) {
        final name = butterfly.name.toLowerCase();
        final filterLowercase = filterText.toLowerCase();
        return name.contains(filterLowercase);
      }).toList();
    }
  }

  Future<void> fetchData() async {
    print('fetching data');
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("Endangered Butterflies")
          .get();

      List<Butterfly> tempList = [];

      querySnapshot.docs.forEach((doc) {
        print(doc);
        final butterfly = Butterfly(
          name: doc["name"],
          imageURL: doc["imageURL"],
          details: doc["details"],
        );
        tempList.add(butterfly);
      });
      setState(() {
        butterflyItems.addAll(tempList);
      });
    } catch (e) {
      print('Error fetching buttefly: $e');
    }
  }
}
