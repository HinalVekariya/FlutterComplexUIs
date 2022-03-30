import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("login_bg.png"), fit: BoxFit.cover),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(top:150.0),
            child: Card(
              margin: const EdgeInsets.all(0.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Container(
                constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, top: 50.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 45.0,
                          child: const TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xbbe5e6eb)),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xbbe5e6eb)),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: 'Email',
                                contentPadding: EdgeInsets.only(
                                    left: 20.0, bottom: 8.0, top: 8.0),
                                filled: true,
                                fillColor: Color(0xbbe5e6eb)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 45.0,
                          child: const TextField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xbbe5e6eb)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xbbe5e6eb)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                  ),
                                  labelText: 'Password',
                                  contentPadding: EdgeInsets.only(
                                      left: 20.0, bottom: 8.0, top: 8.0),
                                  filled: true,
                                  fillColor: Color(0xbbe5e6eb))),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 45.0,
                        child: ElevatedButton(
                          onPressed: () {},
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
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(color: Color(0xff03045e)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0,bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    )),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.facebook,
                                      color: Color(0xff03045e),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(color: Color(0xff03045e)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    )),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "google_sign_in.png",
                                      width: 22.0,
                                      height: 22.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(color: Color(0xff03045e)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () { },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                "Sign up",
                                style: TextStyle(color: Color(0xff03045e)),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
