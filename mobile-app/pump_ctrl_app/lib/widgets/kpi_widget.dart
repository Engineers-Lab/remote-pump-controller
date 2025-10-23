import 'package:flutter/material.dart';

class KpiWidget extends StatelessWidget {
  final String title;
  final String value;
  final String unit;

  const KpiWidget({super.key, required this.title, required this.value, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        // width: ,
        decoration: BoxDecoration(
          color: Color(0xFF1c2327),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Text(title),
            Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            Text(unit)

          ],
        ),
      ),
    );
  }
}
