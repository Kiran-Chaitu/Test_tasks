import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Widget? icon;
  final String? textData;
  const CustomIcon(
      {super.key,
      required this.iconData,
      this.size = 22,
      this.icon,
      this.textData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: size,
        ),
        (icon != null || textData!=null)
            ? Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textData!,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            : SizedBox.shrink()
      ],
    );
  }
}
