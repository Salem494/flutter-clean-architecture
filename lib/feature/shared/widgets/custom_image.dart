import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';

class CustomIamge extends StatelessWidget {
  const CustomIamge({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  2.7/4,
      child: Container(
         height: 150,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16.0),
                image:const  DecorationImage(
                  image: AssetImage(AssetsImages.test_image),
                  fit: BoxFit.cover,
                )),
          ),
    );
  }
}