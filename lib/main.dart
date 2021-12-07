import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/constants.dart';
import 'package:game/core/constants/hive_constants.dart';
import 'package:game/feature/home/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:kartal/kartal.dart';
import 'package:path_provider/path_provider.dart';

void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  Hive.openBox(boxName);
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412,798),
      builder:()=> MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              primary: btnColor,
              textStyle: context.textTheme.headline5?.copyWith(color: Colors.white)
            )
          )
        ),
        debugShowCheckedModeBanner: false,
        title: 'Quiz Game',
        home: HomeScreen()
      ),
    );
  }
}