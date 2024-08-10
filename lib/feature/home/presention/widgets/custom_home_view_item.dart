import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';

class CustomHomeViewItem extends StatelessWidget {
  const CustomHomeViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          width: 130,
          height: 195,
          child: AspectRatio(
            aspectRatio: 2.7/4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
                decoration:  BoxDecoration(  
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                  image: const  DecorationImage(    
                    fit: BoxFit.fill,
                    image:AssetImage(AssetsImages.test_image))
                ),
              
              ),
          ),
        );
  }
}