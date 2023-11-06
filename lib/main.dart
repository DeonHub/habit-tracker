import 'package:flutter/material.dart';
import 'package:tracker/api/firebase_api.dart';
import 'package:tracker/pages/index.dart';
import 'package:tracker/pages/login.dart';
import 'package:tracker/pages/settings.dart';
import 'package:tracker/pages/signup.dart';
import 'package:tracker/pages/widgets/forgot_password.dart';
import 'package:tracker/pages/dashboard.dart';
import 'package:tracker/pages/select_habit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tracker/firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Index(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/forgot-password': (context) => ForgotPassword(),
        '/dashboard': (context) => Dashboard(),
        '/select-habit': (context) => SelectHabitPage(),
        '/settings': (context) => SettingsPage(),
       
      }));
}
