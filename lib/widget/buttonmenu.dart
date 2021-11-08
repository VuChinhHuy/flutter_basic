import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenu extends StatelessWidget {

  final String? inputText;

  const ButtonMenu({this.inputText});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300.w,
      height: 50.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueGrey, Colors.teal,Colors.black87]
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r)
        )
      ),
      child: Center(
        child: Text(inputText!,
        style: GoogleFonts.poppins(fontSize: 18.t,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        ))
    );
  }
}
