import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';

class CustomRateBooks extends StatelessWidget {
  const CustomRateBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        const SizedBox(
          width: 3,
        ),
         Text(
          "4.5",
          style: AppStyles.textmeduim.copyWith(fontSize: 16),
        ),
        const SizedBox(
          width: 8,
        ),
        Text("(1282)", style: AppStyles.text14.copyWith(color: Colors.white54))
      ],
    );
  }
}
