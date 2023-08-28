import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          RichText(
            text: const TextSpan(
              text: 'You\'ve got ',
              style: TextStyle(
                fontSize: 26,
                color: Color.fromRGBO(6, 69, 83, 1),
              ),
              children: [
                TextSpan(
                  text: '12',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 173, 71, 1),
                  ),
                ),
                TextSpan(
                  text: ' tasks today!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
