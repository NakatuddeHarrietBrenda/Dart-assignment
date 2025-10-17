//Hands-On: Profile Card App 
//Objective: 
 //Create a simple profile card showing your picture, name, title, and contact details. 
//Steps: 
//1. Open main.dart. 
//2. Create a StatelessWidget called ProfileCardApp. 
//3. Add a Scaffold with an AppBar.


import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCardApp());
}


// Step 2: Creating a StatelessWidget called ProfileCardApp
class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Step 3: Add a Scaffold with an AppBar
        appBar: AppBar(
          title: Text('Nakatudde Harriet'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        backgroundColor: Colors.teal[50],
        body: Center(
          child: Card(
            elevation: 8,
            margin: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile picture
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                      'assets/images/Screenshot_20240605-210727.jpg', 
                    ),
                  ),
                  SizedBox(height: 16),
                  // Name
                  Text(
                    'Harriet',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900],
                    ),
                  ),
                  SizedBox(height: 8),
                  // Title / designation
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal[700],
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.teal[200]),
                  SizedBox(height: 16),
                  // Contact info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.teal[700]),
                      SizedBox(width: 8),
                      Text(
                        'nakatuddeharriet936@com',
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.teal[700]),
                      SizedBox(width: 8),
                      Text(
                        '+256 790 439 395',
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
