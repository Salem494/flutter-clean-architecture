import 'package:flutter/material.dart';



class AnimatedBuilderWidget extends StatelessWidget {
  const AnimatedBuilderWidget({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
    position: slideAnimation ,
     child: const Text("Read Free Books",
     textAlign: TextAlign.center,style: TextStyle(
      decoration: TextDecoration.none,
      color: Colors.white,fontSize: 15),
      
      ),
                 );
  }
}