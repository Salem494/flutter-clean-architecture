import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/widgets/custom_book_details_button.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/widgets/custom_simillar_books_listview.dart';
import 'package:flutter_clean_architucture/feature/shared/widgets/custom_image.dart';
import 'package:flutter_clean_architucture/feature/shared/widgets/custom_rate_books.dart';

class CustomMiddleBookDetailsView extends StatelessWidget {
  const CustomMiddleBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
            height: 200.0,
            child: CustomIamge()),
        const SizedBox(
          height: 12,
        ),
        Text(
          "Jankkkkj kkklk k,",
          style: AppStyles.textmeduim.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 25
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        Text("Sub Title",
            style: AppStyles.text14.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 25,
                color: Colors.white54)),
        const SizedBox(
          height: 10,
        ),
        CustomRateBooks(),
        const SizedBox(
          height: 5,
        ),
        CustomBookDetailsBotton(),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "You can also like",
              style: AppStyles.text14.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),

        const SizedBox(height: 20,),

        const CustomSimillarBooksListView(),
        // const SizedBox(height: 20,),
      ],
    );
  }
}
