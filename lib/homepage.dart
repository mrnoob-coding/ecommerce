import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/homepage/royals-img-1 1.png') )),),

        leading: Icon(Icons.search),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo5.png',fit: BoxFit.contain,height: 32.0,),
          ],
        ),
      ),
    );
  }
}