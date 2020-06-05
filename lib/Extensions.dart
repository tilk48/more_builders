import 'package:flutter/material.dart';
import 'package:more_builders/more_builders.dart';

extension BuilderColumnExtension on Column{
  BuilderColumn builder({Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    @required int itemNumber,
    @required Widget Function(BuildContext, int) itemBuilder,
    Widget Function(BuildContext, int) seperatorBuilder,}){
      return BuilderColumn(
        itemNumber: itemNumber, 
        itemBuilder: itemBuilder,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        seperatorBuilder: seperatorBuilder,
        key: key,
      );
  }
}

extension BuilderRowExtension on Row{
  BuilderRow builder({Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    @required int itemNumber,
    @required Widget Function(BuildContext, int) itemBuilder,
    Widget Function(BuildContext, int) seperatorBuilder,}){
      return BuilderRow(
        itemNumber: itemNumber, 
        itemBuilder: itemBuilder,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        seperatorBuilder: seperatorBuilder,
        key: key,
      );
  }

}

extension BuilderWrapExtension on Wrap{
  BuilderWrap builder({Key key,
    WrapAlignment alignment,
    final Axis direction,
    @required final int itemNumber,
    @required final Widget Function(BuildContext, int) itemBuilder,
    final Widget Function(BuildContext, int) seperatorBuilder,
    final double spacing,
    final WrapAlignment runAlignment,
    final double runSpacing,
    final WrapCrossAlignment crossAxisAlignment,
    final TextDirection textDirection,
    final VerticalDirection verticalDirection,
  }){
      return BuilderWrap(
        itemNumber: itemNumber, 
        itemBuilder: itemBuilder,
        alignment: alignment,
        crossAxisAlignment: crossAxisAlignment,
        direction: direction,
        runAlignment: runAlignment,
        runSpacing: runSpacing,
        spacing: spacing,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        seperatorBuilder: seperatorBuilder,
        key: key,
      );
  }
}