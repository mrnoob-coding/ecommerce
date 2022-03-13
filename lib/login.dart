import 'package:ecommerce/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkedValue = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
        checkedValue = newValue;

        if (checkedValue) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

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
                  image: AssetImage('images/login/Rectangle 28.png'),
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
                                    'images/login/Rectangle 26.png'))),
                        Image(image: AssetImage('images/logo52.png'))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/login/floral22.png')),
                      Text(
                        'LOGIN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 2,
                      ),
                      Image(image: AssetImage('images/login/floral21.png')),
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
                                  hintText: "Enter Email",
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
                              'PASSWORD',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CheckboxListTile(
                            value: checkedValue,
                            title: Text('Rememberme'),
                            activeColor: Colors.green,
                            onChanged: (val) {
                              setState(() {
                                checkedValue = val!;
                              });
                            },
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
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'FORGOT PASSWORD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textScaleFactor: 1.3,
                      )),
                      SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/login/Line 6.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage('images/login/Line 6.png')),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterPage()));
                        });
                      },
                      child: Text(
                        'DONT HAVE AN ACCOUNT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textScaleFactor: 1.3,
                      ))
                ],
              ),
              Positioned(
                top: 565,
                child: SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
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
