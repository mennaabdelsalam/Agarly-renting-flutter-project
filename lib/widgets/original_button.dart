import 'package:flutter/material.dart';

class originalbutton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed ;

  const originalbutton(
      {Key? key, required this.text, required this.bgColor,   required this.textColor,required  this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 300.0,
        color: bgColor,
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 35.0,
            fontFamily: 'YanoneKaffeesatz Bold',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
