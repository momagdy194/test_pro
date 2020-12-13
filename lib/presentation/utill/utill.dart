import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
 final String title;
 final TextInputType keyBoardType;
 final IconData icon;
 final   controllers;

  TextFieldComponent(
      {@required this.title,
        @required this.keyBoardType,
        @required this.icon,
        @required this.controllers,

      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyBoardType,
      validator: (v){
      if(v.length==0){
        return "Thats Fiels Is requierd";
      }return null;
      },
      controller: controllers,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        prefixIcon: Icon(icon),
        hintText: title,
        hintStyle: TextStyle(
          color: Colors.grey[500],
        ),
      ),
    );
  }
}