import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/dimens.dart';
import 'package:flutter_basic/widget/itemlistview.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {

  final list = ['Ninja','Ninja','Ninja','Ninja','Ninja','Ninja','Ninja'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View',
        style: GoogleFonts.kanit(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10.w
        ),
          color: Colors.amberAccent,child: buildWidgetListView()
      )
    );
  }
  Widget buildWidgetListView() => ListView.separated(
    separatorBuilder: (BuildContext context, index)=> const Divider(),
    scrollDirection: Axis.vertical,
    itemCount: list.length,
    itemBuilder: (BuildContext context, index) {
      return Container(
        padding: EdgeInsets.only(
          left: 20.w,
        ),
        child:   ItemListView(name: list[index])
      );
    },
  );
}

