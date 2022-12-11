import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  const AdaptiveFlatButton(this.text, this.handler);

  void _handlePressed() {
    handler();
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: _handlePressed,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            onPressed: _handlePressed,
            child: Text(text),
          );
  }
}
