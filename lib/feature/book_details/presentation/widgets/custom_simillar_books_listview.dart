import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/feature/shared/widgets/custom_image.dart';

class CustomSimillarBooksListView extends StatelessWidget {
  const CustomSimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0
            ),
            child: CustomIamge(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
