import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  
  void rollDice() {
    print('Dice rolled!');
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
            color3,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}