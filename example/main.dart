import 'package:flutter/material.dart';
import 'package:more_builders/BuilderRow.dart';

class Example extends StatelessWidget {
  const Example({Key key, @required this.items}) : super(key: key);


  final List<String> items;
  @override
  Widget build(BuildContext context) {

    return BuilderRow(
      itemNumber: items.length,
      itemBuilder: (context, index){
        return Text(items[index]);
      },
      seperatorBuilder: (context, index){
        return VerticalDivider(width: 10,);
      },
    );
  }
}