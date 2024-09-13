import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/Login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.password,
          color: Colors.yellowAccent,
          size: 30,
        ),
        title: Text(
          "Forget Password",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: SizedBox(
            width: 300,
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/forget.png'))),
                    ),
                    Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          decoration: TextDecoration.combine([
                            TextDecoration.overline,
                          ])),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Enter Your Email",
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Login()));
                            },
                            child: Text("Back to Login")),
                      ],
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(60, 10, 60, 10))),
                        onPressed: () {},
                        child: Text("Send Email")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
