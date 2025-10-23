import 'package:flutter/material.dart';

class CardBoxWidget extends StatelessWidget {
  final Widget myWidget;
  final Color? boxColor;
  const CardBoxWidget({super.key, required this.myWidget, this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: Colors.red[100]!)
            ),
            child: myWidget,
          ),
        ),
      ],
    );
  }
}
