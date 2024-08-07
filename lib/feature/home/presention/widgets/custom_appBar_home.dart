import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
      child: Row(
        children: [
      Image.asset(AssetsImages.logo,height: 20.1,width: 75,),
      Spacer(),
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,))
      ],),
    );
  }
}