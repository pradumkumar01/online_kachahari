import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  const Policy({super.key});

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Policies",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.9),
                Colors.lightBlue.withOpacity(0.3),
              ])
          ),
        ),
      ),
    );
  }
}
