import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: GoogleFonts.lato(
            // Apply the Lato font
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 215, 12, 70),
        leading: Transform.scale(
          scale: 2, // Increase the scale as needed to enlarge the logo
          child: Image.asset(
            'assets/mega1.png',
            width: 72,
            height: 72,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg1.jpg'),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[900]!, Colors.blue[600]!],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Upcoming Events',
                  style: GoogleFonts.lato(
                    // Apply the Lato font
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                EventCard(
                  title: 'Induction',
                  description:
                      'Join us for an introduction to our technical club!',
                  imagePath: 'assets/induction_event.jpg',
                ),
                EventCard(
                  title: 'Workshop',
                  description: 'Learn the latest technologies and skills.',
                  imagePath: 'assets/workshop_event.jpg',
                ),
                EventCard(
                  title: 'Paridhi',
                  description: 'Showcase your innovative projects!',
                  imagePath: 'assets/paradhi_event.jpg',
                ),
                EventCard(
                  title: 'TECH-X-TRA',
                  description: 'Experience a day filled with tech talks.',
                  imagePath: 'assets/techextra_event.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;

  EventCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isHighlighted = true;
        });

        Future.delayed(Duration(milliseconds: 1000), () {
          setState(() {
            _isHighlighted = false;
          });
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        transform:
            _isHighlighted ? Matrix4.rotationZ(6.28319) : Matrix4.identity(),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(
              color: Color.fromARGB(255, 215, 12, 70), // Red border color
              width: 2.0, // Border width
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.lato(
                        // Apply the Lato font
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 241, 208, 218),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      widget.description,
                      style: GoogleFonts.lato(
                        // Apply the Lato font
                        color: Color.fromARGB(255, 241, 208, 218),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          color: Color.fromARGB(255, 59, 58, 67), // Gray background color
        ),
      ),
    );
  }
}
