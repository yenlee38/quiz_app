import 'package:flutter/material.dart';
import 'package:quiz_app/components/process_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       VxAnimatedBox().size(context.screenWidth, context.screenHeight).withGradient(
         LinearGradient(colors: [Vx.purple500, Vx.orange400], begin: Alignment.topRight
         , end: Alignment.bottomLeft) 
       ).make(),

       ProcessBar()
      ],
    );
  }
}

