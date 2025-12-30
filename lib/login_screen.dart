import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("Login Screen"),

      //   //
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisSize: .max,
              children: [
                SizedBox(height: 80),
                Text(
                  "Welcome back! Glad to see you again!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),

                //
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                    labelStyle: TextStyle(),
                    hintText: "bimal@gmail.com",
                    prefixIcon: Icon(Icons.email),
                    contentPadding: .all(15),
                    floatingLabelBehavior: .auto,
                    floatingLabelAlignment: .start,
                    floatingLabelStyle: TextStyle(color: Colors.pink),
                    fillColor: Colors.pink.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    hintText: "**********",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility_off),
                    ),
                    contentPadding: .all(15),
                    floatingLabelBehavior: .auto,
                    floatingLabelAlignment: .start,
                    floatingLabelStyle: TextStyle(color: Colors.pink),
                    fillColor: Colors.pink.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Align(
                  alignment: .centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: Text("Forget password?"),
                  ),
                ),

                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  child: Text("Login"),
                  //
                ),
                //
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
