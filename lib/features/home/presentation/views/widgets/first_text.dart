import 'package:flutter/material.dart';

class FirstTextWidget extends StatelessWidget {
  const FirstTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'You\'ve got ',
        style: TextStyle(
          fontSize: 26,
          color: Color.fromRGBO(6, 69, 83, 1),
          fontWeight: FontWeight.w500,
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
    );
  }
}
