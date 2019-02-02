import 'package:flutter/material.dart';
import 'package:flutter_app5/model/temp.dart';

class ExpandableList extends StatelessWidget {

  final list = List.generate(5, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) =>
        ExpansionTile(
          title: Text("Header ${i + 1}"),
          children: list.map((val) =>
              ListTile(
                title: Text(val),
                onTap: ()=> new RenderData().fetchData(),
              )).toList(),
        ),
      itemCount: 5,);
  }
}