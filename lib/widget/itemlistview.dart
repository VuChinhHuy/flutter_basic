
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemListView extends StatelessWidget {

  final String? name;


  const ItemListView({this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Image.asset('assets/images/Attack.png', width: 50, height: 50,),
          Text(name!,
          style: GoogleFonts.comfortaa(fontSize: 18.t,),)
        ],
    );
  }
}
