import 'package:flutter/material.dart';

void main() {
  runApp(flutterBasic());
}

class flutterBasic extends StatelessWidget {
  const flutterBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Determine if the device is a tablet, mobile, or in-between range (600-768)
    final bool isTablet = screenWidth >= 768;
    final bool isMidRange = screenWidth >= 600 && screenWidth < 768;
    final bool isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'HUMMING\nBIRD.',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: isTablet ? 20 : 16,
          ),
        ),
        actions: isTablet || isMidRange
            ? [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                'Episodes',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                'About',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ]
            : null,
      ),
      drawer: isMobile
          ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'HUMMING\nBIRD.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.movie),  // Icon for Episodes
              title: Text('Episodes'),
              onTap: () {
                // Handle episodes click
              },
            ),
            ListTile(
              leading: Icon(Icons.info),  // Icon for About
              title: Text('About'),
              onTap: () {
                // Handle about click
              },
            ),
          ],
        ),
      )
          : null,  // No drawer for tablet or mid-range
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: isTablet
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FLUTTER WEB.\nTHE BASICS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'In this course we will go over the basics of using\n'
                      'Flutter Web for development. Topics will include\n'
                      'Responsive Layout, Deploying, Font Changes, Hover\n'
                      'functionality, Modals and more.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Your onPressed action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Join Course'),
            ),
          ],
        )
            : isMidRange
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'In this course we will go over the basics of using\n'
                  'Flutter Web for development. Topics will include\n'
                  'Responsive Layout, Deploying, Font Changes, Hover\n'
                  'functionality, Modals and more.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Your onPressed action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Join Course'),
            ),
          ],
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'In this course we will go over the basics of using\n'
                  'Flutter Web for development. Topics will include\n'
                  'Responsive Layout, Deploying, Font Changes, Hover\n'
                  'functionality, Modals and more.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Your onPressed action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Join Course'),
            ),
          ],
        ),
      ),
    );
  }
}
