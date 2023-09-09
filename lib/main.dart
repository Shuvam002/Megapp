import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_video_player/flutter_video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Pages/AllPages.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    EventPage(),
    ContactUsPage(),
    GalleryPage(),
    TeamPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Allows more than 3 items
        backgroundColor: Color.fromARGB(255, 59, 58, 67),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 233, 230, 230),
        selectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(Icons.home_outlined),
            activeIcon: FaIcon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.event_available_outlined),
            activeIcon: FaIcon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.contact_page_outlined),
            activeIcon: FaIcon(Icons.contact_page),
            label: 'Contact Us',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.photoFilm),
            activeIcon: FaIcon(Icons.collections),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.peopleGroup),
            activeIcon: FaIcon(Icons.people),
            label: 'Team',
          ),
        ],
        selectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 215, 12, 70), // Indicator color
        ),
      ),
      body: pages[currentPageIndex],
    );
  }
}
