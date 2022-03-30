import 'package:flutter/material.dart';
import 'package:wather_ui_demo/login_ui/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("login_bg.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 130.0),
                child: Text(
                  "HELLO",
                  style: TextStyle(
                      fontSize: 45,
                      color: Color(0xff03045e),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(fontSize: 15, color: Color(0xff03045e)),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                        child: const Text("Sign In"),
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Color(0xff03045e)),
                            primary: const Color(0xff03045e),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                              30.0,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 90.0, top: 10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Color(0xff03045e)),
                          ),
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: Colors.white),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                30.0,
                              ))),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
