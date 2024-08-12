import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';
import 'package:flutter_clean_architucture/feature/home/presention/widgets/custom_list_view_bestSeller.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search Here ..",
                  suffixIcon: const Opacity(
                      opacity: .5,
                      child: Icon(Icons.search_rounded,)),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(16)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(16)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Result Data",style: AppStyles.text14.copyWith(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),

            Expanded(child: CustomListViewBestSeller())
          ],
        ),
      ),
    );
  }
}
