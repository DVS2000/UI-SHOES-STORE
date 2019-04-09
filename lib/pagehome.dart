import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'details.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Icon(Icons.shopping_cart, color: Colors.indigo,),
            Text('SHOES STORY', style: TextStyle(color: Colors.indigo))
          ],
        ),
        actions: <Widget>[
         
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
            Container(
              height: 250,
              
              child: Hero(
                tag: 'dash',
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Details()
                  )),
                  child: Image.network(
                    'https://scontent.flad1-2.fna.fbcdn.net/v/t1.15752-9/56337131_633876307072764_7581141443838738432_n.webp?_nc_cat=106&_nc_ht=scontent.flad1-2.fna&oh=da51a8261807843521b6587804977dea&oe=5D31147C',
                    fit: BoxFit.cover,
                    height: 250,
                    width: width,
                  )
                ),
              )
            ),
               Container(
                 margin: const EdgeInsets.all(10),
                 child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 250,
                                child: Text(
                                  'Kedo Runing Shoes from Adidas',
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '30% off',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.dollarSign,
                                        size: 16,
                                      ),
                                      Text('7000',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'AVALIBLE E SIZE',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              shoesSize('UK7'),
                              shoesSize('UK8'),
                              shoesSize('UK9'),
                              shoesSize('UK10')
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: width,
                            height: 75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.check,color: Colors.indigo,),
                                    Text(
                                    'Cash on delivery available on all bellow Rs.5000',
                                    style: TextStyle(fontSize: 14),
                                    )
                                  ]
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.check,color: Colors.indigo,),
                                    Text(
                                    'Cash on delivery available on all bellow',
                                    style: TextStyle(fontSize: 14),
                                    )
                                  ]
                                ),
                                
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('PRODUCT DETAILS',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          ListTile(
                            leading: Icon(Icons.check),
                            title: Text(
                              'Cash on delivery available on all bellow Rs.5000',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.check),
                            title: Text(
                              'Cash on delivery available on all bellow',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.check),
                            title: Text(
                              'Cash on delivery available on all bellow',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.check),
                            title: Text(
                              'Cash on delivery available on all bellow',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          
                        ],
                      ),
               )
                  
                
          ]),
        
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 7,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            width: width,
            height: 65,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                MaterialButton(
                  minWidth: width / 2,
                  height: 65,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'RESELL',
                    ),
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  minWidth: width / 2,
                  height: 65,
                  color: Color(0XFF7842E5),
                  child: Center(
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget shoesSize(String size) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
              width: 1, style: BorderStyle.solid, color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          size,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
