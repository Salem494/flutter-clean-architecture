import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_home_view_item.dart';

class CustomHomeListViewItew extends StatelessWidget {
  const CustomHomeListViewItew({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomHomeViewItem(),
          );
        }),
    );
  }
}