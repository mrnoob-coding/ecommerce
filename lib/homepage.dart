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
        flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/ui elements/homepage/appbar_demo.png'),fit: BoxFit.fill )),),

        leading: Icon(Icons.search,color: Colors.black,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo5.png',fit: BoxFit.contain,height: 50.0,),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.person_outline,color: Colors.black,),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.menu,color: Colors.black,),
            ),
          ],),
        ],
      ),

      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*3/4,
                  color: Color(0xffFFAC00),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('QUALITY PRODUCTS',style: TextStyle(fontSize: 10),),
                      Text(' | ',style: TextStyle(fontSize: 10),),
                      Text('24X7 SUPPORT',style: TextStyle(fontSize: 10),),
                      Text(' | ',style: TextStyle(fontSize: 10),),
                      Text('MADE IN INDIA',style: TextStyle(fontSize: 10),),

                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*1/4,
                  color: Color(0xffFCC129),
                  child: Text('ROYALS OF ROYALOOO',style: TextStyle(fontSize: 10),),
                )
                
              ],
            ),
          ],
        ),
      ),),
    );
  }
}