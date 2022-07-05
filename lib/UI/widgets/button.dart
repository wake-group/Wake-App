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
                gradient: const LinearGradient(
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
