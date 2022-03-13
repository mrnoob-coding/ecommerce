import 'package:ecommerce/login.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 370,
                width: 500,
                child: Image(
                  image: AssetImage('images/ui elements/login/Rectangle 28.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Image(
                                image: AssetImage(
                                    'images/ui elements/login/Rectangle 26.png'))),
                        Image(image: AssetImage('images/logo5.png'))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/ui elements/login/floral22.png')),
                      Text(
                        'REGISTER',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 2,
                      ),
                      Image(image: AssetImage('images/ui elements/login/floral21.png')),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 38),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Email Address',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Email Address',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Email Address',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/ui elements/login/Line 6.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Already A Member ?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage('images/ui elements/login/Line 6.png')),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                        });
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textScaleFactor: 2,
                      ))
                ],
              ),
              Positioned(
                top: 590,
                child: SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'REGISTER',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
