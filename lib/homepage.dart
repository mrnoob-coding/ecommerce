import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/login.dart';
import 'package:ecommerce/register.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  Container ListView_horizontal(String Imageval) {
    return Container(
      width: 160,
      child: Card(
        child: Wrap(
          children: [
            Image.asset(Imageval),
          ],
        ),
      ),
    );
  }

  Card Gridview_img(String Gridval, String heading) {
    return Card(
      elevation: 25,
      child: GridTile(
        child: Container(
            child: Image.asset(
          Gridval,
          fit: BoxFit.fill,
        )),
        footer: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
            child: Text(
          heading,
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
    );
  }

  final imagepaths = [
    'images/ui elements/homepage/banner_1.png',
    'images/ui elements/homepage/banner_2.png'
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('images/ui elements/homepage/appbar_demo.png'),
                  fit: BoxFit.fill)),
        ),
        leading: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo5.png',
              fit: BoxFit.contain,
              height: 50.0,
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.cyan,
          items: [
            BottomNavigationBarItem(
              
                icon: IconButton(
                    onPressed: () {
                      setState(() {
                        print('button preseed1');
                        currentIndex = 0;
                        
                      });
                    },
                    icon: Icon(
                      Icons.note_add_outlined,
                      size: 25,
                      color: Colors.black,
                    )),
                label: 'Login',
                
                ),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      setState(() {
                        print('button preseed2');
                        currentIndex = 1;
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => LoginPage())));
                      });
                    },
                    icon: Icon(
                      Icons.category_sharp,
                      size: 25,
                      color: Colors.black,
                    )),
                label: 'Register'),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      print('button preseed3');
                      currentIndex = 2;

                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => RegisterPage())));
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.black,
                  )),
              label: 'New',
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      setState(() {
                        print('button preseed4');
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(
                      Icons.backpack_outlined,
                      size: 25,
                      color: Colors.black,
                    )),
                label: 'Bag'),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      setState(() {
                        print('button preseed5');
                        currentIndex = 4;
                      });
                    },
                    icon: Icon(
                      Icons.account_box_outlined,
                      size: 25,
                      color: Colors.black,
                    )),
                label: 'Account'),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 20.0,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffFFAC00),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'QUALITY PRODUCTS',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '24X7 SUPPORT',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'MADE IN INDIA',
                          style: TextStyle(fontSize: 10),
                        ),
                         Text(
                          ' | ',
                          style: TextStyle(fontSize: 10),
                        ),
                        Container(
                          color: Color(0xffFCC129,),
                          child: Text(
                            'MADE IN INDIA',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 20.0,
                  //   width: MediaQuery.of(context).size.width * 1 / 4,
                  //   color: Color(0xffFCC129),
                  //   child: Text(
                  //     'ROYALS OF ROYALOOO',textAlign: TextAlign.center,
                  //     style: TextStyle(fontSize: 10),
                  //   ),
                  // )
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 1 / 3.5,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffFCC120).withOpacity(0.5),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    items: imagepaths.map((imagepath) {
                      return Image.asset(imagepath, fit: BoxFit.fill);
                    }).toList(),
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'FLAT 10% OFF',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'on all sale',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'UNDER 3000 ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'STORE',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Hot Deals',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'FROM BANARAS',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'top products',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListView_horizontal(
                        'images/ui elements/homepage/product23.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product2.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product23.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product2.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product23.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product2.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product23.png'),
                    ListView_horizontal(
                        'images/ui elements/homepage/product2.png'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'FLASH SALE',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 230,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 15,crossAxisSpacing: 15),
                  children: [
                    Gridview_img(
                        'images/ui elements/homepage/bag.png', 'Designer bags'),
                    Gridview_img(
                        'images/ui elements/homepage/lehenga.png', 'Lehenga'),
                    Gridview_img('images/ui elements/homepage/Indowestern.png',
                        'Indo western'),
                    Gridview_img('images/ui elements/homepage/nonbrand.png',
                        'Home Decor'),
                    Gridview_img(
                        'images/ui elements/homepage/bag.png', 'Designer bags'),
                    Gridview_img(
                        'images/ui elements/homepage/lehenga.png', 'Lehenga'),
                    Gridview_img('images/ui elements/homepage/Indowestern.png',
                        'Indo western'),
                    Gridview_img('images/ui elements/homepage/nonbrand.png',
                        'Home Decor'),
                    Gridview_img(
                        'images/ui elements/homepage/bag.png', 'Designer bags'),
                    Gridview_img(
                        'images/ui elements/homepage/lehenga.png', 'Lehenga'),
                    Gridview_img('images/ui elements/homepage/Indowestern.png',
                        'Indo western'),
                    Gridview_img('images/ui elements/homepage/nonbrand.png',
                        'Home Decor'),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 4.5,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image:
                      AssetImage('images/ui elements/homepage/bottomline.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
