import 'package:flutter/material.dart';
import 'package:test_tasks/configs/colors/app_colors.dart';
import 'package:test_tasks/views/yt_shorts/widgets/custom_icon.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  List<String> images = [
   'assets/images/Goku Graphic Wallpaper (2).jpeg',
   'assets/images/Goku Graphic Wallpaper.jpeg',
   'assets/images/Goku Wallpaper _ Graphic Wallpaper.jpeg',
   'assets/images/Goku Wallpaper _ Phone Wallpaper.jpeg',
   'assets/images/Graphic Goku Wallpaper.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Shorts',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white))
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          onPageChanged: (index) {},
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: height,
                  width: width,
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
          }),
    );
  }
}
