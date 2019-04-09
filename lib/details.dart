import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String img =
      'https://scontent.flad1-2.fna.fbcdn.net/v/t1.15752-9/56337131_633876307072764_7581141443838738432_n.webp?_nc_cat=106&_nc_ht=scontent.flad1-2.fna&oh=da51a8261807843521b6587804977dea&oe=5D31147C';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Hero(
      tag: 'dash',
      child: Container(
        child: Stack(
          children: <Widget>[
            Image.network(
              img,
              fit: BoxFit.contain,
              height: height,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.black.withOpacity(.2),
                  height: height,
                  width: width,
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black38, blurRadius: 3)
                          ]),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: height / 1.8,
                        width: width / 1.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black38, blurRadius: 2)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.network(
                                  img,
                                  width: 150,
                                  height: 150,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 140,
                                      child: Text(
                                        'Kedo Runing Shoes from Adidas',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.dollarSign,
                                              size: 16,
                                            ),
                                            Text('7000',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                    FontWeight.bold))
                                          ],
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '30% off',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Text(
                                    'SELECT SIZE',
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                  ),
                                 Container(
                                   margin: const EdgeInsets.all(8),
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      shoesSize('UK7', Colors.transparent, Colors.grey),
                                      shoesSize('UK8', Colors.transparent, Colors.grey),
                                      shoesSize('UK9', Colors.indigo, Colors.white),
                                      shoesSize('UK10', Colors.transparent, Colors.grey)
                                    ],
                                  ),
                                 )
                              ],
                            ),
                            SizedBox(height: 20,),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Text(
                                    'SELECT QTY',
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                  ),
                                 Container(
                                   margin: const EdgeInsets.all(8),
                                   width: 150,
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      shoesQty('-', Colors.transparent, Colors.grey),
                                      Text(
                                        '2',
                                         style: TextStyle(
                                           fontSize: 20,

                                         ),
                                      ),
                                      shoesQty('+', Colors.indigo, Colors.white),
                                     
                                    ],
                                  ),
                                 )
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              height: 45,
                              width: width / 1.5,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(
                                child: Text(
                                  'ADD TO CART',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                  ),
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

   Widget shoesSize(String size, Color cor, Color corfont) {
    return Container(
      width: 70,
      height: 30,
      decoration: BoxDecoration(
          color: cor,
          border: Border.all(
          width: 1, style: BorderStyle.solid, color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              size,
              style: TextStyle(fontSize: 14, color: corfont),
            ),
          ),
    );
  }

  Widget shoesQty(String size, Color cor, Color corfont) {
    return Container(
      width: 40,
      height: 30,
      decoration: BoxDecoration(
          color: cor,
          border: Border.all(
          width: 1, style: BorderStyle.solid, color: Colors.grey),
          shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              size,
              style: TextStyle(fontSize: 25, color: corfont),
            ),
          ),
    );
  }
}
