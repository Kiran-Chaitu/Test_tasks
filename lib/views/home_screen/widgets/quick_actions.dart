import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class QuickActions extends StatelessWidget {
  final double height;
  final double width;
  const QuickActions({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 1,
      height: height * 0.4,
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Container(
          height: height * 0.25,
          width: width * 1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 0.5,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Actions',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10, crossAxisCount: 4),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: height * 0.06,
                            width: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:
                                    const Color.fromARGB(255, 229, 224, 224)),
                            child: Icon(
                              Utils.gridIcons[index],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FittedBox(child: Text(Utils.gridText[index])),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
