import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  final double height;
  final double width;
  const BlueBox({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: width * 1,
                    height: height * 0.1,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.white],
                      ),
                    ),
                    child: const Text(
                      'App Exclusive Offer\nGet 2% OFF on recharge above ₹249!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
  }
}