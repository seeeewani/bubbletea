import 'package:flutter/material.dart';

import 'package:bubbleteatute/models/drink.dart';

// ignore: must_be_immutable
class DrinkTile extends StatelessWidget {
  final Drink drink;
  void Function()? onTap;
  DrinkTile({
    Key? key,
    required this.drink,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset("drink.imagePath"),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
