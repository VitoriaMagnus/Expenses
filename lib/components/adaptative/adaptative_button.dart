import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function() onPressed;
  const AdaptativeButton({this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            child: Text(label!),
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label!,
            ),
          );
  }
}
