import 'package:flutter/material.dart';
import 'package:eticket/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Sign Up"),
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                      "hanifadzdzaky@gmail.com",
                      "hanif123",
                      "hnf",
                      ["Action", "Horor", "Gore"],
                      "indonesia");

                  if (result.user == null) {
                    print(result.massage);
                  } else {
                    print(result.user.toString());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
