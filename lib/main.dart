import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/auth_controllers.dart';
import 'package:zoom_clone/screens/auth/login_screen.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroudColor),
      home: StreamBuilder(
          stream: AuthController().authChanger,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return const Home();
            }
            return LoginScreen();
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}
