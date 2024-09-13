import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  var username = new TextEditingController();
  var email = new TextEditingController();
  var password = new TextEditingController();
  var mob = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.app_registration_sharp,
          color: Colors.yellowAccent,
          size: 30,
        ),
        title: Text(
          "Register Page",
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
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/register.png"))),
                ),
                Center(
                  child: Text(
                    "REGISTER ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.overline,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Enter Username",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                      labelText: "Enter Password",
                      prefixIcon: Icon(Icons.password)),
                ),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                      labelText: "Enter Mobile Number",
                      prefixIcon: Icon(Icons.mobile_friendly)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.deepPurple)),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
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
