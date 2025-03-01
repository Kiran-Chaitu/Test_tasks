// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tasks/cubit/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:test_tasks/views/task_3/final_task.dart';
// import 'package:test_tasks/views/home_screen/home_screen.dart';
// import 'package:test_tasks/views/yt_shorts/yt_shorts.dart';

void main() {
  runApp(const MyApp());

  // DevicePreview(
  //   enabled: true,
  //   builder: (context) => const MyApp(),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FinalTask(),
        // builder: DevicePreview.appBuilder,
        // locale: DevicePreview.locale(context),
      ),
    );
  }
}
