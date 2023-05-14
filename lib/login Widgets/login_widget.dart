import 'package:flutter/material.dart';

import '../styles/colors.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: AppColors.lightRed,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/Icons/Buttons/Login.png',
                  width: 40,
                  height: 50,
                  fit: BoxFit.fitHeight,
                ),
                const Expanded(
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, color: AppColors.darkGrey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Email and password textbox
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 24),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 24),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.symmetric(
                            vertical: 12, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        foregroundColor: AppColors.darkGrey,
                        backgroundColor: AppColors.headerGrey),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        foregroundColor: AppColors.darkGrey,
                        backgroundColor: AppColors.headerGrey),
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
