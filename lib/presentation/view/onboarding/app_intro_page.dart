import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/whatsapp_theme.dart';

import '../../../data/utils/constants.dart';

class AppIntroPage extends StatefulWidget {
  const AppIntroPage({super.key});

  @override
  State<AppIntroPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<AppIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              welcomeToWATextWidget(),
              waWorldWidget(),
              ppAndTnCWidget(),
              agreeAndContinueWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Container agreeAndContinueWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: MediaQuery.of(context).size.width * .8,
      child: ElevatedButton(
        onPressed: () {
          context.go(home);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: WhatsAppTheme.themeData.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        child: const Text(
          "AGREE AND CONTINUE",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container ppAndTnCWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Text.rich(
        TextSpan(
          text: "Read our ",
          style: const TextStyle(color: Colors.black87, fontSize: 12),
          children: <TextSpan>[
            TextSpan(
              text: "Privacy Policy.",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            const TextSpan(
              text: 'Tap "Agree and Continue" to \naccept the ',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            TextSpan(
              text: "Terms of Service.",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Container waWorldWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Image.asset("assets/images/wa_world.png"),
    );
  }

  Container welcomeToWATextWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Center(
        child: Text(
          "Welcome to WhatsApp",
          style: TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
