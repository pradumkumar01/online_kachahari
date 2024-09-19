import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_online_kachehari/components/update_profile/edit.dart';
import 'package:flutter_online_kachehari/components/update_profile/editForm.dart';

class Updatepage extends StatefulWidget {
  const Updatepage({super.key});
  @override
  State<StatefulWidget> createState() {
    return UpdateState();
  }
}

class UpdateState extends State<Updatepage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  late String _selectedGender;
  final TextEditingController _controller = TextEditingController();

  void _handleGenderChange(String? value) {
    setState(() {
      _selectedGender = value ?? 'Male'; // Update state
    });
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      _nameController.text = "Ravi";
      _emailController.text = "Ravi@gmail.com";
      _phoneController.text = "12345678";
      _selectedGender = 'Male';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Update",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    child: const Text(
                  'Update Your details',
                  style: TextStyle(fontSize: 25, fontFamily: 'serif'),
                )),
                const SizedBox(height: 20),
                editForm("Enter the name", Icons.person, TextInputType.name,
                    _nameController, false, '', '', '', _handleGenderChange),
                const SizedBox(height: 10),
                editForm(
                    "Enter the Email",
                    Icons.email,
                    TextInputType.emailAddress,
                    _emailController,
                    false,
                    '',
                    '',
                    '',
                    _handleGenderChange),
                const SizedBox(height: 10),
                editForm("Enter the Mobile", Icons.phone, TextInputType.phone,
                    _phoneController, false, '', '', '', _handleGenderChange),
                const SizedBox(height: 10),
                //Radio
                editForm("", Icons.male, TextInputType.text, _genderController,
                    true, 'Male', 'Male', _selectedGender, _handleGenderChange),
                const SizedBox(height: 10),
                editForm(
                    "",
                    Icons.male,
                    TextInputType.text,
                    _genderController,
                    true,
                    'Female',
                    'Female',
                    _selectedGender,
                    _handleGenderChange),
                const SizedBox(height: 10),
                editForm(
                    "",
                    Icons.male,
                    TextInputType.text,
                    _genderController,
                    true,
                    'Other',
                    'Other',
                    _selectedGender,
                    _handleGenderChange),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Edit()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: const Text(
                      'Update Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
