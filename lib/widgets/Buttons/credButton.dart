import 'package:flutter/material.dart';

class CredButtons extends StatefulWidget {
  final String? whatText;
  final Color? whatColor;
  final double? whatlength;

  CredButtons({this.whatText, this.whatColor, this.whatlength});

  @override
  _CredButtonsState createState() => _CredButtonsState();
}

class _CredButtonsState extends State<CredButtons> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: widget.whatlength,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              hintText: widget.whatText,
              fillColor: widget.whatColor,
              filled: true,
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.purple, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ));
  }
}
