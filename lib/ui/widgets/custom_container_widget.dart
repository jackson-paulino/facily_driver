import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final double width;
  final Color color;
  final bool rowColumn;
  final List<Widget> children;
  const CustomContainerWidget({
    Key? key,
    required this.color,
    required this.width,
    this.rowColumn = false,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
      child: rowColumn
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: children,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: children,
            ),
    );
  }
}
