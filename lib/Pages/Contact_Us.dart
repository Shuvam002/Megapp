import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: GoogleFonts.lato(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 215, 12, 70),
        leading: Transform.scale(
          scale: 2,
          child: Image.asset(
            'assets/mega1.png',
            width: 72,
            height: 72,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg4.jpg'),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: GoogleFonts.pacifico(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  child: Text('Get in Touch'),
                ),
                SizedBox(height: 16.0),
                AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                  child: Text(
                    'Feel free to reach out to us for any inquiries or feedback. We\'re here to help!',
                  ),
                ),
                SizedBox(height: 16.0),
                ContactButton(
                  icon: Icons.email,
                  label: 'Email Us',
                  onPressed: () async {
                    final Uri _emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'soumyadeep_d.cse2021@msit.edu.in',
                    );
                    final String _emailLaunchUriString =
                        _emailLaunchUri.toString();
                    if (await canLaunch(_emailLaunchUriString)) {
                      await launch(_emailLaunchUriString);
                    } else {
                      throw 'Could not launch email';
                    }
                  },
                ),
                SizedBox(height: 16.0),
                ContactButton(
                  icon: Icons.phone,
                  label: 'Call Us',
                  onPressed: () async {
                    final Uri _phoneLaunchUri = Uri(
                      scheme: 'tel',
                      path: '+918282866698',
                    );
                    final String _phoneLaunchUriString =
                        _phoneLaunchUri.toString();
                    if (await canLaunch(_phoneLaunchUriString)) {
                      await launch(_phoneLaunchUriString);
                    } else {
                      throw 'Could not make a phone call';
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  ContactButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
