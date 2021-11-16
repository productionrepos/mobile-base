import 'package:flutter/material.dart';

class FormsWidget extends StatelessWidget {
  const FormsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Container(
          child: Column(
            children: [
              getInputText('Username', 'Username', (value) => null, size),
              getInputText(
                  'e.g. john@gmail.com', 'E-mail', (value) => "", size),
              getInputText('At least 8 symbols', 'Password', (value) {
                if (value!.trim().isEmpty) {
                  return 'Password is required';
                }
              }, size),
              getInputText('+56 9 ........', 'Phone number', (value) {
                if (value!.trim().isEmpty) {
                  return 'Phone number is required';
                }
              }, size)
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(),
        )
      ],
    );
  }

  Widget getInputText(String hint, String label,
      String? Function(String?) validator, Size size) {
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width * .8,
      child: TextFormField(
        validator: validator,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF009B78), width: 2),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF009B78), width: 2),
                borderRadius: BorderRadius.circular(10)),
            labelText: label,
            alignLabelWithHint: true,
            hintText: hint,
            labelStyle: TextStyle(color: Color(0xFF009B78)),
            floatingLabelBehavior: FloatingLabelBehavior.always),
        autofocus: true,
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
      ),
    );
  }
}
