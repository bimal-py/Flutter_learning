import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailcontroller = TextEditingController(
    text: "bimal@gmail.com",
  );

  TextEditingController passwordcontroller = TextEditingController(
    text: "password",
  );

  bool obscureText = true;

  void onEyeIconClicked() {
    // if (obscureText == true) {
    //   obscureText = false;
    // } else {
    //   obscureText = true;
    // }

    setState(() {
      obscureText = !obscureText;
      print("the value is $obscureText");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
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
                TextFormField(
                  controller: emailcontroller,
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
                  validator: (value) {
                    if ((value?.isEmpty ?? false)) {
                      return "Email field is required";
                    } else if (!(value?.contains("@gmail.com") ?? false)) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                TextFormField(
                  controller: passwordcontroller,
                  obscureText: obscureText,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    hintText: "**********",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        onEyeIconClicked();
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
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
                  validator: (value) {
                    if ((value?.isEmpty ?? false)) {
                      return "Password field is required";
                    } else if ((value?.length ?? 0) < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
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
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      var email = emailcontroller.text;
                      Navigator.of(
                        context,
                      ).pushNamedAndRemoveUntil("/dashboard", (route) => false);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "You'r logged in as: $email",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 8),
                          margin: .all(24),
                          padding: .all(12),
                          behavior: .floating,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    } else {}
                  },

                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor: Colors.black,
                  //   foregroundColor: Colors.white,
                  //   fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  // ),
                  child: Text("Login"),
                  //
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    emailcontroller.clear();
                    passwordcontroller.clear();
                  },

                  child: Text("Clear Form"),
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
