import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internship/pages/login_page.dart'; // Import the LoginPage

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = FirebaseAuth.instance.currentUser;

  // sign user out method
  void signUserOut(BuildContext context) async {
    // Sign out the user
    await FirebaseAuth.instance.signOut();

    // Navigate to LoginPage and remove all previous routes
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => signUserOut(context), // Pass context to the method
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Logged in as: " + (user?.email ?? 'Unknown'),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}