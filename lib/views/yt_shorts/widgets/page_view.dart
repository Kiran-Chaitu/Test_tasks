import 'package:flutter/material.dart';
import 'package:test_tasks/configs/colors/app_colors.dart';

import 'custom_icon.dart';

class Pageview extends StatefulWidget {
  final double height;
  final double width;
  const Pageview({super.key, required this.height, required this.width});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    final double height = widget.height;
    final double width = widget.width;
    List<String> images = [
      'assets/images/Goku Graphic Wallpaper (2).jpeg',
      'assets/images/Goku Graphic Wallpaper.jpeg',
      'assets/images/Goku Wallpaper _ Graphic Wallpaper.jpeg',
      'assets/images/Goku Wallpaper _ Phone Wallpaper.jpeg',
      'assets/images/Graphic Goku Wallpaper.jpeg'
    ];
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        onPageChanged: (index) {},
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child: Image.asset(images[index]),
              ),
              Positioned(
                  right: 20,
                  bottom: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIcon(
                        iconData: Icons.thumb_up_outlined,
                        size: 30,
                        textData: "1.43M",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIcon(
                        iconData: Icons.thumb_down_outlined,
                        size: 30,
                        textData: "dislike",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIcon(
                        iconData: Icons.comment_outlined,
                        size: 30,
                        textData: "4,095",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIcon(
                        iconData: Icons.share_outlined,
                        size: 30,
                        textData: "Share",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIcon(
                        iconData: Icons.receipt_outlined,
                        size: 30,
                        textData: "19k",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
              Positioned(
                  left: 20,
                  bottom: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '@ThePlantiBoys',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: FittedBox(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Subscribe',
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Positioned(
                  left: 15,
                  bottom: 10,
                  child: Column(
                    children: [
                      Text(
                        'He tells me when he\' thirsty...😅',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.music_note_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'School Rooftop (Birds Sounds',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          );
        });
  }
}
