import 'package:flutter/material.dart';
import 'package:flutter_layout/app_drawer.dart';
import 'package:flutter_layout/details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

          
          //BUTTERFLY 1: Karner Blue Butterfly
        GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly1.jpg',
          butterfly: 'Karner Blue Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly1.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text(
          'Karner Blue',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold,),
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


//BUTTERFLY 2: Callippe Silverspot Butterfly
 GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly1.jpg',
          butterfly: 'Callippe Silverspot Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly2.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text(
          'Callippe Silverspot',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold,),
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


//BUTTEFLY 3: Bartram\'s Hairstreak Butterfly
  GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly1.jpg',
          butterfly: 'Bartram\'s Hairstreak Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly3.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Bartram\'s Hairstreak',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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


//BUTTERFLY 4: Saint Francis' Satyr
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly4.jpg',
          butterfly: 'Saint Francis\' Satyr',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly3.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text(
          'Saint Francis\' Satyr',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.0),
        Text(
          '(Neonympha mitchellii francisci)',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 13.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  ),
),

//BUTTERFLY 5: San Bruno elfin butterfly
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly5.jpg',
          butterfly: 'San Bruno Elfin Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly5.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('San Bruno Elfin',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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


//BUTTERFLY 6: Miami Blue
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly6.jpg',
          butterfly: 'Miami Blue Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly6.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Miami Blue',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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

//BUTTERFLY 7: Schaus swallowtail
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly7.jpg',
          butterfly: 'Schaus swallowtail',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly7.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Schaus swallowtail',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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


//BUTTERFLY 8: Palos Verdes Blue Butterfly
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly8.jpg',
          butterfly: 'Palos Verdes Blue Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly8.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Palos Verdes Blue',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
),
        SizedBox(height: 5.0),
      Text(
        '(Glaucopsyche lygdamus\n palosverdesensis)',
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


//BUTTERFLY 9: Florida Leafwing Butterfly
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly9.jpg',
          butterfly: 'Florida Leafwing Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly9.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Florida Leafwing',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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


//BUTTERFLY 10: Uncompahgre Fritillary Butterfly
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          imageAssetPath: 'assets/butterfly10.jpg',
          butterfly: 'Uncompahgre Fritillary Butterfly',
          details: 'Federal Status: Endangered\nHost plant: Wild lupine (Lupinus perennis)\nHistorical Range: Illinois, Indiana, Massachusetts, Michigan, Minnesota, New Hampshire, New York, Ohio, Pennsylvania, Wisconsin.\n\nHistory and Description: The Karner blue butterfly was first described more than a century ago in Karner, New York. It is a small butterfly, with a wingspan of about one inch. The male\'s wings are distinctively marked with a silvery or dark blue color. The female is grayish brown, especially on the outer portions of the wings, to blue on the topside, with irregular bands of orange crescents inside the narrow black border. (ECOS- Environmental Conservation Online System)\n\nWhile adult Karner blues feed on a variety of plants, wild lupine is the only known food plant for their larvae. Without wild lupine the cycle of life for this butterfly would be broken. Lupines are adapted to particular environmental conditions. The plants required by the larvae of the Karner blue, are found in savanna, barrens, and dune habitats which were once quite extensive. However, like many other places the habitats of the Karner blue have been subject to extensive development with a resulting decline in the butterfly.',
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
        Image.asset(
          'assets/butterfly10.jpg',
          height: 100,
        ),
        SizedBox(height: 20),
        Text('Uncompahgre Fritillary',
  style: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.bold),
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
        
        
        ]
                  )
                ),
              ],
            ),
        ),
      drawer: AppDrawer(),
    );
  }}