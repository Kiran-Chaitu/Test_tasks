import 'package:flutter/material.dart';
import 'package:test_tasks/views/home_screen/widgets/blue_box.dart';
import 'package:test_tasks/views/home_screen/widgets/greetings.dart';
import 'package:test_tasks/views/home_screen/widgets/pack_interface.dart';
import 'package:test_tasks/views/home_screen/widgets/quick_actions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.59,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orangeAccent, Colors.white],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.04, horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Greetings(height: height, width: width),
                  const SizedBox(height: 20),
                  PackInterface(height: height, width: width),
                  const SizedBox(height: 10),
                  BlueBox(height: height, width: width),
                ],
              ),
            ),
          ),
          QuickActions(height: height, width: width),
        ],
      ),
    );
  }
}
