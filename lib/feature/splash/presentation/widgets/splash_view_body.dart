import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/helper/route_helper.dart';
import 'package:flutter_clean_architucture/core/utils/app_route_path.dart';
import 'package:flutter_clean_architucture/core/utils/assets.dart';
import 'package:flutter_clean_architucture/feature/splash/presentation/widgets/custom_slide_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();

}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  late  Animation<Offset> slideAnimation;


 @override
  void initState() {
  super.initState();
  initSlideAnmition();
  Future.delayed(const Duration(seconds: 3),() => AppRouteHelper.pushNamedRoute(context,AppRoutePath.homeView));
  }



 void initSlideAnmition() {
    animationController = AnimationController(vsync: this,duration:const Duration(seconds: 2));
   slideAnimation = Tween<Offset>(begin: const Offset(0, 10) ,end: Offset.zero ).animate(animationController);
     animationController.forward();
 }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AssetsImages.logo),
            const SizedBox(height: 9,),
           AnimatedBuilder(
            builder: (context, _){
              return  AnimatedBuilderWidget(slideAnimation: slideAnimation);
            },
            animation: slideAnimation
           )
          ],
    );
  }
}

