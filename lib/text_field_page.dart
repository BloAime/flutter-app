import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  final String hintText;
  final String labelText;
  final  icon;
  final bool obscureText;
  final icon1;
  final  keyboard;
  const TextfieldWidget({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.obscureText,
    required this.icon1,
    required this.keyboard,
  }) : super(key: key);

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(8),
       child: Column(
         children: [
         TextField(
           keyboardType: widget.keyboard,
           obscureText:widget.obscureText,
           decoration: InputDecoration(
           hintText: widget.hintText,
           labelText: widget.labelText,
           labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(7)),
           suffixIcon: widget.icon,
           prefixIcon: widget.icon1,
          ),
         )
       ]), 
      ) ,
    );
  }
}
