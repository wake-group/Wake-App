import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget button(String? text, Function()? onPressed) {
  return Platform.isAndroid
      ? ElevatedButton(
          onPressed: onPressed,
          // style: ButtonStyle(c),
          // textColor: Colors.white,

          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(0.0))),
          child: Container(
            width: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.00)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 148, 231, 225),
                    Color.fromARGB(255, 62, 182, 226)
                  ],
                )),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text!,
              textAlign: TextAlign.center,
            ),
          ),
        )
      // color: const Color(0xff8B7CA2))
      : CupertinoButton(child: Text(text!), onPressed: onPressed);
}

Widget mybutton(String? text, Function()? onPressed, double? height) {
  return GestureDetector(
    onTap: onPressed,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15.00)),
      child: Container(
        width: height!,
        height: 40,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.00)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 148, 231, 225),
                Color.fromARGB(255, 62, 182, 226)
              ],
            )),
        child: Center(child: Text(text!)),
      ),
    ),
  );
}
