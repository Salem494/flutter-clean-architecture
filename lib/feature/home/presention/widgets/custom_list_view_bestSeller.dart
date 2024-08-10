import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_bestSeller_item.dart';

class CustomListViewBestSeller extends StatelessWidget {
  const CustomListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context,index){
      return CustomBestSellerItem();
      },
    );
  }
}