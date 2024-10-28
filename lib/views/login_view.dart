import 'package:doc_doc_app/views/home_view.dart';
import 'package:doc_doc_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String id = 'login_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/home-page-image.webp',
            ),
            const Text(
              "Expert Treatment & Top Doctors at Your Fingertips",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              buttonBackgroundColor: Colors.black,
              imagePath: 'assets/svgs/apple_Image.svg',
              buttonText: 'Continue with Apple',
              buttonWidth: 300,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, HomeView.id);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomElevatedButton(
                  buttonBackgroundColor: Colors.white,
                  imagePath: 'assets/svgs/google_Image.svg',
                  buttonText: 'Google',
                  textColor: Colors.black,
                  buttonWidth: 100,
                  onPressed: () {
                    Navigator.pushNamed(context, HomeView.id);
                  },
                ),
                CustomElevatedButton(
                  buttonBackgroundColor: Colors.white,
                  imagePath: 'assets/svgs/facebook_Image.svg',
                  buttonText: 'Facebook',
                  textColor: Colors.black,
                  buttonWidth: 100,
                  iconWidth: 27,
                  iconHeight: 27,
                  onPressed: () {
                    Navigator.pushNamed(context, HomeView.id);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const TextSpan(
                    text: " Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
