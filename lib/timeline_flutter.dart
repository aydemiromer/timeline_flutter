library timeline_flutter;

import 'package:flutter/material.dart';

class TimelineFlutter extends StatefulWidget {
  const TimelineFlutter({
    super.key,
    required this.height,
    required this.width,
    this.rightPlacePadding,
    this.title,
    this.titleTextStyle,
    this.colorCirclePrimary,
    this.colorCircleSecondary,
    this.circleWidth,
    this.cirleHeight,
    this.circleWidget,
    this.contentChild,
    this.lineColor,
    this.lineHeight,
    this.lineWidth,
  });
  final double height;
  final double width;
  final EdgeInsets? rightPlacePadding;
  //Title
  final String? title;
  final TextStyle? titleTextStyle;
  //content
  final Widget? contentChild;

  // Circle Color
  final Color? colorCirclePrimary;
  final Color? colorCircleSecondary;
  final double? cirleHeight;
  final double? circleWidth;
  final Widget? circleWidget;

  //line properties
  final double? lineWidth;
  final double? lineHeight;
  final Color? lineColor;

  @override
  State<TimelineFlutter> createState() => _TimelineRowWidgetState();
}

class _TimelineRowWidgetState extends State<TimelineFlutter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _leftSideTimeLine(),
          _rightSideTimeline(),
        ],
      ),
    );
  }

  Padding _rightSideTimeline() {
    return Padding(
      padding: widget.rightPlacePadding ?? const EdgeInsets.only(top: 5),
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
                visible: widget.title == null ? false : true,
                child: _title(widget.title ?? '')),
            SizedBox(
              height: widget.height - 32,
              width: widget.width * .75,
              child: widget.contentChild,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _leftSideTimeLine() {
    return SizedBox(
      height: widget.height,
      width: widget.width * .15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: widget.cirleHeight ?? 50,
              width: widget.circleWidth ?? 50,
              child: _circle(widget.circleWidget ?? const SizedBox())),
          Container(
            width: widget.lineWidth ?? 5,
            height: widget.lineHeight ?? widget.height - 50,
            color: widget.lineColor ?? Colors.black,
          )
        ],
      ),
    );
  }

  Text _title(String title) {
    return Text(
      title,
      style: widget.titleTextStyle ??
          const TextStyle(color: Color(0xFF333333), fontSize: 16),
    );
  }

  CircleAvatar _circle(Widget circleInside) {
    return CircleAvatar(
      backgroundColor: widget.colorCirclePrimary,
      child: CircleAvatar(
          backgroundColor: widget.colorCircleSecondary, child: circleInside),
    );
  }
}
