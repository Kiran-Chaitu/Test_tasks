import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tasks/views/yt_shorts/widgets/custom_icon.dart';
import 'package:test_tasks/views/yt_shorts/widgets/shorts.dart';

import '../../configs/colors/app_colors.dart';
import '../../cubit/bottom_nav_bar/bottom_nav_bar.dart';

class YtShorts extends StatefulWidget {
  const YtShorts({super.key});

  @override
  State<YtShorts> createState() => _YtShortsState();
}

class _YtShortsState extends State<YtShorts> {
  List<Widget> screens = [
    Center(child: Text('Home'),), 
    Shorts(), 
    Center(child: Text('Add'),), 
    Center(child: Text('Subscriptions'),), 
    Center(child: Text('Profile'),), 
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, index) {
          return screens[index];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, currentIndex) {
          return BottomNavigationBar(
            
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.primaryColor,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) =>
                  context.read<BottomNavBarCubit>().changeTab(index),
              items: [
                BottomNavigationBarItem(
                    icon: (currentIndex == 0)
                        ? CustomIcon(
                            iconData: Icons.home,
                          )
                        : CustomIcon(
                            iconData: Icons.home_outlined,
                          ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: (currentIndex == 1)
                        ? CustomIcon(
                            iconData: Icons.monetization_on,
                          )
                        : CustomIcon(
                            iconData: Icons.monetization_on_outlined,
                          ),
                    label: 'Shorts'),
                BottomNavigationBarItem(
                    icon: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: (currentIndex == 3)
                        ? CustomIcon(
                            iconData: Icons.subscriptions,
                          )
                        : CustomIcon(iconData: Icons.subscriptions_outlined),
                    label: 'Subscriptions'),
                BottomNavigationBarItem(
                    icon: (currentIndex == 3)
                        ? CustomIcon(
                            iconData: Icons.person,
                          )
                        : CustomIcon(iconData: Icons.person_outline),
                    label: 'you'),
              ]);
        },
      ),
    );
  }
}
