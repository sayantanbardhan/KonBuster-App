import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sih/config/app_routes.dart';
import 'package:sih/firebase_options.dart';
import 'package:sih/styles/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.users,
      routes: AppRoutes.pages,
    );
  }
}
