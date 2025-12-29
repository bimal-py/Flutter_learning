import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Login Screen"),

        //
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Welcom back! Glad to see you again!",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),

            //
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your email",
                hintText: "bimal@gmail.com",
                //
              ),
              //
            ),
            SizedBox(height: 24),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                labelText: "Enter your password",
                hintText: "**********",
                suffixIcon: IconButton(
                  onPressed: () {
                    //
                  },
                  icon: Icon(Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: .centerRight,
              child: TextButton(
                onPressed: () {
                  //
                },
                child: Text("Forget password?"),
              ),
            ),

            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              //
            ),
            //
            //
          ],
        ),
      ),
    );
  }
}
