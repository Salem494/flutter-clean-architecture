import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';
import 'package:flutter_clean_architucture/feature/shared/widgets/custom_button.dart';

class CustomBookDetailsBotton extends StatelessWidget {
  const CustomBookDetailsBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            height: 45.0,
            width: 120.0,
            containerColor: const Color(0xffFFFFFF),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
            child: Center(
              child: Text(
                "19.99€",
                style: AppStyles.text14
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          CustomButton(
            height: 45.0,
            width: 120.0,
            containerColor: const Color(0xffEB7C5C),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
            child: Center(
              child: Text(
                "Free preview",
                style: AppStyles.text14
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
