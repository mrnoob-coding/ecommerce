
import 'dart:math';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation filp_anime;

   @override
     void initState() {
      super.initState();
      controller =AnimationController(duration: Duration(seconds: 3),vsync: this)..addListener(() {setState(() {
        
      }); });
      filp_anime = Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.5, curve: Curves.linear)));
     controller.repeat(reverse: false);     
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(animation: controller,builder: (context, child){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Transform(transform: Matrix4.identity()..rotateY(2*pi*filp_anime.value),alignment: Alignment.center,
              child: Image.asset('images/logo5.png'),),
            ),
            
              LinearProgressIndicator(
                color: Colors.amber.shade400,
                backgroundColor: Colors.orange.shade600,
              value: filp_anime.value,
              semanticsLabel: 'Linear progress indicator',
            ),
            
          ],
        ),
      );
      },
      ),
    );
  }
 }