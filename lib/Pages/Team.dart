import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamMember {
  final String name;
  final String imagePath;
  final String linkedinUrl;
  final String facebookUrl;
  final String instagramUrl;
  final String year; // Added year variable

  TeamMember({
    required this.name,
    required this.imagePath,
    required this.linkedinUrl,
    required this.facebookUrl,
    required this.instagramUrl,
    required this.year,
  });
}

class TeamPage extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    TeamMember(
        name: 'John Doe',
        imagePath: 'assets/image1.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
        facebookUrl: 'https://www.facebook.com/johndoe/',
        instagramUrl: 'https://www.instagram.com/johndoe/',
        year: '3rd'),
    TeamMember(
        name: 'Jane Smith',
        imagePath: 'assets/image2.jpg',
        linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
        facebookUrl: 'https://www.facebook.com/janesmith/',
        instagramUrl: 'https://www.instagram.com/janesmith/',
        year: '4th'),
    // Add your team members here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team',
          style: GoogleFonts.roboto(
            fontSize: 24, // Adjust font size as needed
            fontWeight: FontWeight.bold,
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
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: (teamMembers.length / 2).ceil(),
              itemBuilder: (context, index) {
                final startIndex = index * 2;
                final endIndex = startIndex + 2;

                return Row(
                  children:
                      teamMembers.sublist(startIndex, endIndex).map((member) {
                    return Expanded(
                      child: TeamMemberCard(member: member),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final TeamMember member;

  TeamMemberCard({required this.member});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _showPicture(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(member.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showPicture(context); // Show the picture in full-screen view
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
            color: Color.fromARGB(255, 215, 12, 70),
            width: 2.0,
          ),
        ),
        child: Container(
          color: Color.fromARGB(255, 59, 58, 67),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 215, 12, 70),
                  child: Center(
                    child: Image.asset(
                      member.imagePath,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      member.name,
                      style: GoogleFonts.roboto(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 241, 208, 218),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      member.year,
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 241, 208, 218),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Color.fromARGB(255, 241, 208, 218),
                          ),
                          onPressed: () {
                            _launchURL(member.linkedinUrl);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.facebook,
                            color: Color.fromARGB(255, 241, 208, 218),
                          ),
                          onPressed: () {
                            _launchURL(member.facebookUrl);
                          },
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color.fromARGB(255, 241, 208, 218),
                          ),
                          onPressed: () {
                            _launchURL(member.instagramUrl);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
