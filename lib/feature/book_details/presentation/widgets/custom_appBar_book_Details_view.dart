import 'package:flutter/material.dart';

class CustomAppbarBookDetailsView extends StatelessWidget {
  const CustomAppbarBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon:const Icon(Icons.close,size: 30),
            onPressed: (){},
          ),
          IconButton(
            icon:const Icon(Icons.shopping_cart,size: 30),
            onPressed: (){},
          ),
        
        ],
      ),
    );
  }
}
