import 'package:flutter/material.dart';

class OrderBottomBar extends StatelessWidget {
  const OrderBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dans 15 min"),
            Text("Sur 1500 m"),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Temps:  15 min 47 s"),
            Text("Sur 1500 m"),
          ],
        ),
      ),
    );
  }
}
