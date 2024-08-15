import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left:8,top: 5,bottom: 5),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
         AspectRatio(
          aspectRatio: 2.9/4,
           child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              image:const  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsImages.test_image))
            ),
           ),
         ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
           Expanded(
             child: Column(
                   
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                       width: MediaQuery.of(context).size.width * .5,
                     
                       child:   Text("Hary Poter and The GoBlet Fire",
                       maxLines: 2,
                       style: AppStyles.textmeduim.copyWith(fontWeight: FontWeight.w800))),
                       const SizedBox(height: 10,),
                       const  Text("JK Harry",style:AppStyles.text14 ,),
                       const SizedBox(height:15,),
            Padding(
                padding: EdgeInsets.only(right: 30,),
                child:  Row(
                children: [
                Text("99 \$",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16,decoration: TextDecoration.none),),
                Spacer(),
                Text( "4.5(12.02)",style: AppStyles.text14,)
                         ],),
              )
              ],
             ),
           ),
        ],),
      ),
    );
  }
}