import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/Login_Screen.dart';
import 'package:flutter_online_kachehari/screens/alert.dart';

import '../api/constants/Urls.dart';
import '../components/update_profile/editForm.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _controllerFor_name = TextEditingController();
  final _controllerFor_email = TextEditingController();
  final _controllerFor_mobile = TextEditingController();
  final _controllerFor_password = TextEditingController();
  final _controllerFor_second_password = TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  late String _selectedGender;

    void _handleGenderChange(String? value){
      setState(() {

        _selectedGender = value ?? 'Male';
      });
    }
    @override
    void initState(){
      super.initState();
      _controllerFor_name.text="";
      _controllerFor_email.text="";
      _controllerFor_mobile.text="";
      _controllerFor_password.text="";
      _controllerFor_second_password.text="";
      _selectedGender = "Male";
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 37,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/logo.png',color: Colors.black,),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *1.9,
                    height: MediaQuery.of(context).size.height * 0.99,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.45),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(54),
                          topRight: Radius.circular(54)),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'serif',
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      // name code is here
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Card(elevation: 4,
                          child: Container(
                            width: 300,
                            child: TextField(
                              controller: _controllerFor_name,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                hintText: 'Enter your name',
                                labelText: 'Name',
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'serif'),
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif',
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                            ),
                          ),
                        ),
                      ),

                      // email code here

                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Card(elevation: 4,
                          child: Container(
                            width: 300,
                            child: TextField(
                              controller: _controllerFor_email,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                hintText: 'Enter your E-mail',
                                labelText: 'E-mail',
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'serif'),
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif',
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                            ),
                          ),
                        ),
                      ),

                      // mobile code is here

                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Card(elevation: 4,
                          child: Container(
                            width: 300,
                            child: TextField(
                              controller: _controllerFor_mobile,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.call),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                hintText: 'Enter your mobile no',
                                labelText: 'Mobile',
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'serif'),
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif',
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                            ),
                          ),
                        ),
                      ),

                      // password code is here
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Card(elevation: 4,
                          child: Container(
                            width: 300,
                            child: TextField(
                              obscureText: true,
                              controller: _controllerFor_password,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password_sharp),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                hintText: 'Enter your password',
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'serif'),
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif',
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                            ),
                          ),
                        ),
                      ),
                      //

                      //  confirm password code is here
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Card(elevation: 4,
                          child: Container(
                            width: 300,
                           
                            child: TextField(
                              obscureText: true,
                              controller: _controllerFor_second_password,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password_rounded),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                hintText: 'Confirm your password',
                                labelText: 'Confirm-Password',
                                labelStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'serif'),
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif',
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: editForm("", Icons.male, TextInputType.text, _genderController,
                            true, 'Male', 'Male', _selectedGender, _handleGenderChange),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 300,
                        height: 50,
                        child: editForm(
                            "",
                            Icons.male,
                            TextInputType.text,
                            _genderController,
                            true,
                            'Female',
                            'Female',
                            _selectedGender,
                            _handleGenderChange),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 300,
                        height: 50,
                        child: editForm(
                            "",
                            Icons.male,
                            TextInputType.text,
                            _genderController,
                            true,
                            'Other',
                            'Other',
                            _selectedGender,
                            _handleGenderChange),
                      ),
                      const SizedBox(height: 20),
                     ElevatedButton(onPressed: (){sign_up_result_page();},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,elevation:2
                      ),
                      child:const Text("Sign Up ",style: TextStyle(fontFamily: "serif",fontSize: 21,color: Colors.white
                      ),),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 61,
                              ),
                              const Text(
                                'Already have account? ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'serif',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const Login_Screen();
                                    }));
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Login ',
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: 'serif',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void sign_up_result_page() async{
    String name = _controllerFor_name.text;
    String email = _controllerFor_email.text;
    String password = _controllerFor_password.text;
    String mobile = _controllerFor_mobile.text;
    String cnf_password = _controllerFor_second_password.text;
    String gender = _selectedGender;
    //Validation name
    if (name.trim() == "") {
      showAlert(context, "name is required");
      return;
    }
    //Validation Email
    if (email.trim() == "") {

      showAlert(context,"Email is required");
      return;
    }

    //Validation mobile
    if (mobile.trim() == "") {
      showAlert(context, "Mobile is required");
      return;
    }

    //Validation password
    if (password.trim() == "") {
      showAlert(context, "Password is required");
      return;
    }

    //Validation cnf_password
    if (cnf_password.trim() == "") {
      showAlert(context, "Confirm Password is required");
      return;
    }

    if(password == cnf_password){
      //Ready to Submit
      final Dio dio = Dio();
      Response response;
      var userdata = {
        "name":name,
        "email" : email,
        "password" : password,
        "mobile" : mobile,
        "gender" : gender,
      };
      final formData = FormData.fromMap(userdata);
      response = await dio.post(Urls().getApiUrl("create_users"), data: formData);
      print(response.data.toString());
      // JSON response
      if(response.statusCode == 200) {
        Map<String, dynamic> userResponse = json.decode(response.toString());
        int code = userResponse["code"]?? "";
        String message = userResponse["message"]?? "";
        showAlert(context, message);
      }
    }else{
      showAlert(context, "Password and Confirm Password Does not Match");
      return;
    }

  } //end of method
}
