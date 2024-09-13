import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 10),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg4.jpg"),
            opacity: 0.8,
            fit: BoxFit.cover,
            scale: 2.0,
          ),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).pushReplacement(
                    //       MaterialPageRoute(
                    //         builder: (context) => const Login(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Text(
                    //     'Skip',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 20,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(""),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to Online Kachahari',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'We are here to help you',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Typewriter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
