import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_appBar_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarHomeView(),
      ],
    );
  }
}