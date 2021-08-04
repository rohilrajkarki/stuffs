import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final String? whattext;
  ActionButton({this.whattext});

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), //border corner radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 1, //spread radius
            blurRadius: 1, // blur radius
            offset: Offset(0, 5), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
        ],
      ),
      child: Center(
        child: Text(
          widget.whattext!,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.purple, fontSize: 17),
        ),
      ),
    );
  }
}
