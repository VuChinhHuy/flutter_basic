import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class GirdViewDemo extends StatefulWidget {
  const GirdViewDemo({Key? key}) : super(key: key);

  @override
  _GirdViewDemoState createState() => _GirdViewDemoState();
}

class _GirdViewDemoState extends State<GirdViewDemo> {
  final list = ['Ninja','Ninja','Ninja','Ninja','Ninja','Ninja','Ninja'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gird View',
            style: GoogleFonts.kanit(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            padding: EdgeInsets.only(
                top: 10.w
            ),
            color: Colors.grey,child: buildWidgetGirdView()
        )
    );
  }
  Widget buildWidgetGirdView() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2, mainAxisExtent: 100),
    itemCount: list.length,
    itemBuilder: (BuildContext context, index){
      return Column(
          children: [
            Image.asset('assets/images/Attack.png', width: 50, height: 50,),
            Text(
              list[index],
              style: TextStyle(fontSize: 20.t),
            )
          ]
      );
    },
  );
}
