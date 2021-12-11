import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/color_constants.dart';
import 'package:game/core/constants/hive_constants.dart';
import 'package:game/feature/home/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:kartal/kartal.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  Hive.openBox(HiveConstants.boxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 798),
      builder: () => MaterialApp(
          theme: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      primary: AppColors.btnColor,
                      textStyle: context.textTheme.headline5
                          ?.copyWith(color: AppColors.white))),
              scaffoldBackgroundColor: AppColors.primaryColor,
              inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r))),
              appBarTheme: AppBarTheme(
                  iconTheme: IconThemeData(color: AppColors.blue, size: 50.sp),
                  backgroundColor: AppColors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  shadowColor: AppColors.transparent),
              iconTheme: IconThemeData(size: 30.sp)),
          debugShowCheckedModeBanner: false,
          title: 'Quiz Game',
          home: const HomeScreen()),
    );
  }
}
