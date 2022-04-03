import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var TextBody = TextStyle(fontFamily: 'Open Sans M', fontSize: 15, color: Color.fromRGBO(102, 85, 95, 1));
    var TextAmount = TextStyle(fontFamily: 'Open Sans EB', fontSize: 25, color: Color.fromRGBO(102, 85, 95, 1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //code to execute on button press
        },
        backgroundColor: Color.fromRGBO(102, 85, 95, 1),
        child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Color.fromARGB(255, 246, 166, 137),
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.bar_chart_rounded, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.account_balance_wallet, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.person, color: Colors.white,), onPressed: () {},),
            ],
          ),
        ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage('assets/icons/header.png')
            )
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: () {},),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('DASHBOARD', style: TextStyle(fontFamily: 'Open Sans EB', color: Colors.white, fontSize: 30), ),
                          ],
                        ),
                        IconButton(icon: Icon(Icons.settings), color: Colors.white, onPressed: () {}, alignment: Alignment.topLeft,),
                      ],
                    ),
                  ),

                  Container(
                    height: 128,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 224, 181),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          offset: Offset(0, 5)
                        ),
                      ],
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('TOTAL BALANCE', style: TextBody),
                        Text('Rs. 10,000', style: TextAmount)
                      ],
                    ),
                  )
                    
                  // Expanded(
                  //   child: GridView.count(
                  //   mainAxisSpacing: 10,
                  //   crossAxisSpacing: 10,
                  //   primary: false,
                  //   crossAxisCount: 1,
                  //   children: <Widget>[
                  //     Card(
                  //       child: Column(
                  //         children: <Widget>[
                  //           Text('TOTAL BALANCE', style: TextStyle(fontFamily: 'Open Sans L', color: Colors.white, fontSize: 20),)
                  //         ],
                  //       )
                  //     ),
                  //   ],
                  // )
                  // )
                ],
              )
            )
          )
        ],
      ),
    );
  }
}