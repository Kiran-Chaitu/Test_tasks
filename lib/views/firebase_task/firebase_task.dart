import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_tasks/views/firebase_task/registration_form.dart';

class FirebaseTask extends StatefulWidget {
  const FirebaseTask({super.key});

  @override
  State<FirebaseTask> createState() => _FirebaseTaskState();
}

class _FirebaseTaskState extends State<FirebaseTask> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  bool _isEmail(String input) {
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegex.hasMatch(input);
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email'),
                  hintText: 'Enter your Email...'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('PassWord'),
                  hintText: 'Enter your PassWord...'),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                final username = emailController.text.trim();
                final password = passwordController.text.trim();
                // debugPrint(username);

                try {
                  UserCredential userCredential;
                  if (_isEmail(username)) {
                    userCredential = await _auth.signInWithEmailAndPassword(
                      email: username,
                      password: password,
                    );
                    if (userCredential.user != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationForm(
                                    email: emailController.text.trim(),
                                  )));
                    } else {
                      userCredential =
                          await _auth.createUserWithEmailAndPassword(
                        email: username,
                        password: password,
                      );
                      if (userCredential.user != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationForm(
                                      email: emailController.text.trim(),
                                    )));
                      }
                    }
                  } else {
                    _showError('Correct the Credinatials');
                  }
                } catch (e) {
                  _showError("Login failed. Please check your credentials.");
                }
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
