// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldBox extends StatefulWidget {
  const TextFieldBox({Key? key}) : super(key: key);

  @override
  State<TextFieldBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextFieldBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 50.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Stack(
          children: [
            Positioned(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Azores,Portugal',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    suffixIcon: Material(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0)),
                      child: Icon(Icons.search, color: Colors.white.withOpacity(0.7),size: 30,),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      minWidth: 100.0,
                      minHeight: 60.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
