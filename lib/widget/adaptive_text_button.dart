import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
            ? CupertinoButton(
                              child: Text(
                                text,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              onPressed: handler,
                            )
                          : TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
                              ),
                              child: Text(
                                text,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              onPressed: handler,
                            );
  }
}