import 'package:flutter/material.dart';

Container editForm(
    String labelText,
    IconData icondata,
    TextInputType inputType,
    TextEditingController controller,
    bool radioEnable,
    String genderTitle,
    String value,
    String gender,
    ValueChanged<String?> onGenderChanged) {
  return Container(
    height: 70,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.blueAccent.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ]),
    child: radioEnable
        ? RadioListTile(
            value: value,
            groupValue: gender,
            onChanged: onGenderChanged,
            title: Text(genderTitle),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  icon: Icon(icondata),
                  labelText: labelText,
                  border: InputBorder.none),
              keyboardType: inputType,
            ),
          ),
  );
}
