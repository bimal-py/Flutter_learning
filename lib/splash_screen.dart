import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //to delay 3 second in splash and go to login screen
  void splashDelay(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3), () {
      // print("after 3 seconds");
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed("/login");
      }
    });
  }

  @override
  void didChangeDependencies() {
    splashDelay(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: Text(
              "Learning App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
              textAlign: .center,
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(
          //     //     builder: (context) {
          //     //       return LoginScreen();
          //     //     },
          //     //   ),
          //     // );
          //     Navigator.pushNamed(context, "/login");
          //   },
          //   child: Text("Go to Login"),
          // ),
        ],
      ),
    );
  }
}

// class Hellow extends StatefulWidget {
//   const Hellow({super.key});

//   @override
//   State<Hellow> createState() => _HellowState();
// }

// class _HellowState extends State<Hellow> {
//   late int value = 0;
//   @override
//   void initState() {
//     print("init");
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     print("did change dependencies");
//     super.didChangeDependencies();
//   }

//   @override
//   void didUpdateWidget(covariant Hellow oldWidget) {
//     print("did update widget");
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   dispose() {
//     print("dispose");
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// //createstate
// //init state
// //did change dependencies
// //did update widget
// //dispose
