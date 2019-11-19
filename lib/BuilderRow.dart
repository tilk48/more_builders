import 'package:flutter/material.dart';

class BuilderRow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final int itemNumber;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) seperatorBuilder;

  const BuilderRow({
    Key key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    @required this.itemNumber,
    @required this.itemBuilder,
    this.seperatorBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      children: buildColumn(context),
    );
  }

  List<Widget> buildColumn(BuildContext context) {
    List<Widget> out = List();
    for (var i = 0; i < itemNumber; i++) {
      out.add(itemBuilder(context, i));
      if (seperatorBuilder != null && i != itemNumber - 1) {
        out.add(seperatorBuilder(context, i));
      }
    }
    return out;
  }
}
