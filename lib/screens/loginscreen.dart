import 'package:flutter/material.dart';

import '../Widgets/header_widget.dart';
import '../login Widgets/login_widget.dart';
import '../login Widgets/partnerlogin_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const HeaderWidget(title: 'Login'), //need to change the back button
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              LoginWidget(),
              SizedBox(
                height: 20,
              ),
              PartnerLoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
