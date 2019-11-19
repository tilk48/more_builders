import 'package:flutter/material.dart';

class BuilderWrap extends StatelessWidget {
  final WrapAlignment alignment;
  final Axis direction;
  final int itemNumber;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) seperatorBuilder;
  final double spacing;
  final WrapAlignment runAlignment;
  final double runSpacing;
  final WrapCrossAlignment crossAxisAlignment;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  const BuilderWrap({
    Key key,
    @required this.itemNumber,
    @required this.itemBuilder,
    this.seperatorBuilder,
    this.alignment = WrapAlignment.start,
    this.direction = Axis.horizontal,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      children: buildColumn(context),
      direction: direction,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
    );
  }

  List<Widget> buildColumn(BuildContext context) {
    List<Widget> out = List();
    for (var i = 0; i < itemNumber; i++) {
      out.add(itemBuilder(context,i));
      if (seperatorBuilder != null && i != itemNumber - 1) {
        out.add(seperatorBuilder(context, i));
      }
    }
    return out;
  }
}
