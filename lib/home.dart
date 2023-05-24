import 'package:flutter/material.dart';
import 'package:flutter_layout/app_drawer.dart';
import 'package:flutter_layout/details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? imageURL;
  String details = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191c44),
      appBar: AppBar(
        backgroundColor: Color(0xFFff66c4),
        title: Text(
          'Welcome!',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Handle search button press
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/logo.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // TODO: Handle search button press
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[


                  //Butterfly 1
                  GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Karner blue butterfly (Lycaeides melissa samuelis).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('cA2q63hOLQiTO9HluCnu')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Karner Blue Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Karner Blue',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Lycaeides melissa samuelis)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                //Butterfly 2
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Callippe silverspot butterfly (Speyeria callippe callippe).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('WBHRYJOZub6sKoi7tgRH')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Callippe Silverspot Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Callippe Silverspot Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Speyeria callippe callippe)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


        //Butterfly 3
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Saint Francis\' Satyr (Neonympha mitchellii francisci).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('mMshraWDyJL9Ffn6EvF5')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Saint Francis\' Satyr Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Saint Francis\' Satyr',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Neonympha mitchellii francisci)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                
                //Butterfly 4
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('San Bruno elfin butterfly (Callophrys mossii bayensis).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('6hLWwz9Gr0buxC3qAYg1')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'San Bruno Elfin Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'San Bruno Elfin Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Callophrys mossii bayensis)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                //Butterfly 5
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Miami Blue  (Cyclargus thomasi bethunebakeri).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('EqFgwMoPbNsDWluxJUmp')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Miami Blue Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Miami Blue Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Cyclargus thomasi bethunebakeri)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  //Butterfly 6
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Schaus swallowtail  (Heraclides aristodemus ponceanus).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('pQwQDDOg10war3yPsyZQ')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Schaus swallowtail Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Schaus Swallowtail Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Heraclides aristodemus ponceanus)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  

                  //Butterfly 7
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Palos verdes blue butterfly (Glaucopsyche lygdamus palosverdesensis).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('eO51hmfNoJvtVRZ5brXA')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Palos Verdes Blue Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Palos Verdes Blue Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Glaucopsyche lygdamus palosverdesensis)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  //Butterfly 8
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Florida leafwing butterfly (Anaea troglodyta floridalis).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('21qmYYQypI9w9dIP46lw')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Florida Leafwing Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Florida Leafwing Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Anaea troglodyta floridalis)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                //Butterfly 9
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Uncompahgre fritillary butterfly (Boloria acrocnema).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('ZVVTyO20YSjvRMKc6B8O')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Uncompahgre Fritillary Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Uncompahgre Fritillary Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Boloria acrocnema)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

            //Butterfly 10
                   GestureDetector(
                    onTap: () async {
                      // Retrieve the image URL from Firebase Storage
                      imageURL = await firebase_storage.FirebaseStorage.instance
                          .ref('Bartram\'s hairstreak butterfly (Strymon acis bartrami).jpg')
                          .getDownloadURL();

                      // Retrieve the 'details' from Firestore
                      DocumentSnapshot snapshot = await FirebaseFirestore.instance
                          .collection('Endangered Butterflies')
                          .doc('xDxCHNm58jKESwJEcTYS')
                          .get();

                 if (snapshot.exists) {
                  // If the document exists, extract the 'details' field
                  var data = snapshot.data() as Map<String, dynamic>;
                  if (data != null && data.containsKey('details')) {
                    details = data['details'] as String;
                  } else {
                    details = 'Details not available';
                  }
                } else {
                  // Handle the case when the document does not exist
                  details = 'Details not available';
                }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL: imageURL!,
                            name: 'Bartram\'s Hairstreak Butterfly',
                            details: details,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFff66c4),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            imageURL ?? '',
                            height: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Bartram\'s Hairstreak Butterfly',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '(Strymon acis bartrami)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
