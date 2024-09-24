import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'John Paul Sapasap Profile',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('John Paul Sapasap Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'John Paul Sapasap',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: const [
                  InfoBox(
                    title: 'Personal Information',
                    content: Column(
                      children: [
                        InfoRow(icon: Icons.person, label: 'John Paul Sapasap'),
                        InfoRow(icon: Icons.home, label: 'Jaro, Iloilo City'),
                        InfoRow(icon: Icons.cake, label: 'Age: 21'),
                      ],
                    ),
                  ),
                  InfoBox(
                    title: 'School',
                    content: Column(
                      children: [
                        InfoRow(
                            icon: Icons.school,
                            label: 'West Visayas State University'),
                        InfoRow(
                            icon: Icons.email,
                            label: 'johnpaul.sapasap@wvsu.edu.ph'),
                        InfoRow(icon: Icons.phone, label: '+639502116505'),
                      ],
                    ),
                  ),
                  InfoBox(
                    title: 'Hobbies',
                    content: Column(
                      children: [
                        InfoRow(icon: Icons.games, label: 'Video Games'),
                        InfoRow(icon: Icons.code, label: 'Coding'),
                        InfoRow(icon: Icons.movie, label: 'Watching Movies'),
                      ],
                    ),
                  ),
                  InfoBox(
                    title: 'Social Media',
                    content: Column(
                      children: [
                        InfoRow(
                            icon: Icons.facebook, label: 'John Paul Sapasap'),
                        InfoRow(
                            icon: FontAwesomeIcons.instagram,
                            label: '@johnpaulsapasap'),
                        InfoRow(
                            icon: FontAwesomeIcons.github, label: 'jayy404'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Its you boi Jp - My life is pretty much bland. It is noting more than just a cycle - EAT|SLEEP|CODE|REPEAT. Computer Science really helped me to understand the emerging technology in todays world.',
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoRow({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20.0, color: Colors.blue),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 14.0, color: Colors.black),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}

class InfoBox extends StatelessWidget {
  final String title;
  final Widget content;

  const InfoBox({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10.0),
          content,
        ],
      ),
    );
  }
}
