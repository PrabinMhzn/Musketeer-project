import 'package:flutter/material.dart';
import 'package:musketeer_app/Dashboard/dashboard_1.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'lib/Icons/logo/Musketeer.png',
                  width: 90,
                  height: 90,
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                'Musketeer',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 58),
                    fontSize: 40,
                    fontFamily: 'Roboto'),
              ),
              const SizedBox(height: 70),
              //Search button
              SizedBox(
                  width: 320,
                  height: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 224, 102, 102)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(26, 26, 184, 0.612)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                      ),
                      child: Row(
                        children: <Widget>[
                          //icon : search item icon
                          Image.asset(
                            'lib/Icons/Buttons/Search Icon.png',
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Search Item',
                            style: TextStyle(
                                color: Color.fromARGB(201, 46, 45, 45),
                                fontSize: 30),
                          ),
                        ],
                      ))),
              const SizedBox(height: 50),

              //Login button

              SizedBox(
                  width: 320,
                  height: 90,
                  child: ElevatedButton(
                      //onpressed navigation
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(212, 83, 231, 155)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                      ),
                      child: Row(
                        children: <Widget>[
                          //icon : login icon
                          Image.asset(
                            'lib/Icons/Buttons/Login.png',
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Login',
                            style: TextStyle(
                                color: Color.fromARGB(201, 46, 45, 45),
                                fontSize: 30),
                          ),
                        ],
                      ))),
              const SizedBox(height: 50),
              //Sign up button

              SizedBox(
                  width: 320,
                  height: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(212, 83, 169, 231)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(26, 26, 184, 0.612)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                      ),
                      child: Row(
                        children: <Widget>[
                          //icon : signup icon
                          Image.asset(
                            'lib/Icons/Buttons/Signup.png',
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Sign up',
                            style: TextStyle(
                                color: Color.fromARGB(201, 46, 45, 45),
                                fontSize: 30),
                          ),
                        ],
                      )))
            ],
          ),
        )
      ]),
    );
  }
}
