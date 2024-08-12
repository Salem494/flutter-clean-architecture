import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/widgets/custom_appBar_book_Details_view.dart';
import 'package:flutter_clean_architucture/feature/book_details/presentation/widgets/custom_middle_book_details_view.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomAppbarBookDetailsView(),
              CustomMiddleBookDetailsView()
            ],
          ),
        )
      ],
    );
  }
}
