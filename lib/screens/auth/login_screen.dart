import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/auth_controllers.dart';

import '../../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Start to join meetings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/onboarding.jpg'),
            CustomButton(
              text: 'login',
              onPressed: () {
                _authController.signinWithGoogle();
              },
            )
          ],
        ),
      ),
    );
  }
}
