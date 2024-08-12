import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_appBar_home.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_bestSeller_item.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_listView_item.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_list_view_bestSeller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarHomeView(),
        CustomHomeListViewItew(),
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Best Seller",
            style: AppStyles.textmeduim,
          ),
        ),
        Expanded(child:   CustomListViewBestSeller())
      ],
    );
  }
}
