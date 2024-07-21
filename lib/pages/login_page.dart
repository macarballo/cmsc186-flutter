import 'package:flutter/material.dart';
import 'package:internship/components/my_button.dart';
import 'package:internship/components/my_textfield.dart';
import 'package:internship/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 55),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 20),

              // "login"
              const Text(
                "Log In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 15),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
               ),
              
              const SizedBox(height: 15), // Add a SizedBox for spacing

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20), // Add a SizedBox for spacing

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 25), // Add a SizedBox for spacing

              // "or continue with"
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 150.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.25,
                        color: Colors.black,
                      ),
                    ),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child:  Text(
                      "Or continue with",
                      style: TextStyle(color: Colors.black54),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 0.25,
                        color: Colors.black,
                      ),
                    ),  
                  ],
                ) 
              ),

              const SizedBox(height: 20), // Add a SizedBox for spacing

              // google + facebook + apple id sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/images/gmail.png'),

                  SizedBox(width: 10.0), // Add a SizedBox for spacing

                  // facebook button
                  SquareTile(imagePath:  'lib/images/facebook.png'),
              
                  SizedBox(width: 10.0), // Add a SizedBox for spacing

                  // apple id button
                  SquareTile(imagePath:  'lib/images/apple.png'),
                ],
              ),

               const SizedBox(height: 20), // Add a SizedBox for spacing

              // not a member? register here
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(width: 3.0), // Add a SizedBox for spacing
                  Text(
                    "Register now",
                    style: TextStyle(
                      color: Colors.blue, 
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ],
              )

              // // forgot password
              // TextButton(
              //   onPressed: () {
              //     // Add forgot password functionality
              //   },
              //   child: Text('Forgot Password?'),
              // ),

              // SizedBox(height: 15), // Add a SizedBox for spacing

              // // sign in button
              // ElevatedButton(
              //   onPressed: () {
              //     // Add sign-in functionality
              //   },
              //   child: Text('Sign In'),
              // ),

              // SizedBox(height: 15), // Add a SizedBox for spacing

              // // "or continue with"
              // Text('Or continue with'),

              // SizedBox(height: 15), // Add a SizedBox for spacing

              // // other sign in buttons (gmail, facebook, & apple)
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         // Add Google sign-in functionality
              //       },
              //       icon: Icon(Icons.mail), // Replace with Google icon
              //     ),
              //     IconButton(
              //       onPressed: () {
              //         // Add Facebook sign-in functionality
              //       },
              //       icon: Icon(Icons.facebook), // Replace with Facebook icon
              //     ),
              //     IconButton(
              //       onPressed: () {
              //         // Add Apple sign-in functionality
              //       },
              //       icon: Icon(Icons.apple), // Replace with Apple icon
              //     ),
              //   ],
              // ),

              // SizedBox(height: 15), // Add a SizedBox for spacing

              // // not a member? register now
              // TextButton(
              //   onPressed: () {
              //     // Add register functionality
              //   },
              //   child: Text('Not a member? Register now'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}