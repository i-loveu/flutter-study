import 'package:flutter/material.dart';
import 'package:uiclone1/screens/currency_card.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/placeholder.jpg"),
                ),
                Icon(Icons.add, color: Colors.white, size: 40),
              ],
            ),
            Text(
              "MONDAY 16",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            CurrencyCard(name: "Design", code: "code", amount: "ddd", order: 1),
            SizedBox(
              height: 10,
            ),
            CurrencyCard(name: "DAILY", code: "code", amount: "ddd", order: 1),
            SizedBox(
              height: 10,
            ),
            CurrencyCard(name: "WEEKLY", code: "code", amount: "ddd", order: 1),
          ],
        ));
  }
}
