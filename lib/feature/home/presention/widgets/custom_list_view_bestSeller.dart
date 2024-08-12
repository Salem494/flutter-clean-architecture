import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/helper/route_helper.dart';
import 'package:flutter_clean_architucture/core/utils/app_route_path.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_bestSeller_item.dart';

class CustomListViewBestSeller extends StatelessWidget {
  const CustomListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              AppRouteHelper.pushNamedRoute(
                  context, AppRoutePath.bookDetailsView);
            },
            child: CustomBestSellerItem());
      },
    );
  }
}
