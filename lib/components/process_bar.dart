import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:websafe_svg/websafe_svg.dart';
class ProcessBar extends StatelessWidget {
  const ProcessBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(color: Vx.purple300, width: 3),
            borderRadius: BorderRadius.circular(50)
           ),
          child: Stack(
            children: [
              LayoutBuilder(builder: (context, constraints) => Container(
                width: constraints.maxWidth * 0.5,
                decoration: BoxDecoration (
                  //gradient: kPrimaryGradient,
                  color: Color.fromARGB(255, 129, 255, 179),
                  borderRadius: BorderRadius.circular(50)
                ),
              )),
              Positioned.fill(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("60sec", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                 WebsafeSvg.asset('assets/imgs/clock.svg')
                ],),
              ))
            ],
          ),
        ),
      )
    ],));
  }
}