import 'package:flutter/material.dart';
import 'package:pump_ctrl_app/widgets/card_box_widget.dart';
import 'package:pump_ctrl_app/widgets/kpi_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var error = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            // error card
            error
                ? Row(
                    children: [
                      Expanded(
                        child: CardBoxWidget(
                          boxColor: Theme.of(
                            context,
                          ).colorScheme.errorContainer,
                          myWidget: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alert!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text("the error text!!"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
            // pump status card
            CardBoxWidget(
              boxColor: Color(0xFF1c2327),
              myWidget: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // status icon
                  Icon(
                    Icons.check_circle_outline_rounded,
                    size: 48,
                    color: Colors.green,
                  ),
                  SizedBox(width: 24),
                  // status text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pump Status",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // water flow card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                KpiWidget(
                  title: "Water Flow Rate",
                  value: "10.5",
                  unit: "L/min",
                ),
                KpiWidget(title: "Pressure", value: "4.5", unit: "bar"),
              ],
            ),
            CardBoxWidget(
              boxColor: Color(0xFF1c2327),
              myWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pump action", style: TextStyle(fontSize: 16)),
                  Text("Switch pump on or off"),
                  Switch(
                    value: true,
                    onChanged: (bool val) {
                      val = !val;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
