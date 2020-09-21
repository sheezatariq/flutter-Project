import 'dart:convert';
import 'package:assignmentPro/actions/service.dart';
import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var res;

  Widget _buildWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:20, left: 20),
                child: Image.asset("assets/_Icons - Close.png", fit: BoxFit.contain),
              ),
              Container(
                margin: EdgeInsets.only(top:20, left: 20),
                child: Image.asset("assets/Path 5957.png", fit: BoxFit.contain),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:20,right: 20),
                    child: Image.asset("assets/_Icons - Close Copy 2.png", fit: BoxFit.contain),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:20, right: 20),
                    child: Image.asset("assets/cart.png", fit: BoxFit.contain),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:60),
          alignment: Alignment.bottomCenter,
          child: Image.asset("assets/Group 2523.png"),
        )
      ],
    );
  } 

  Widget _buildMakeUp() {
    return  Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/slide 01@2x.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:55, top: 20),
                        child: Center(child: Image.asset("assets/fifty.png"))
                      ),
                      Container(
                        margin: EdgeInsets.only(left:55),
                        child: Center(
                          child: Image.asset("assets/Party Makeup.png")
                        )
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/Rectangle 7131.png",
                      height: 200,
                      width: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:45, top: 20),
                        child: Center(
                          child: Image.asset("assets/promo.png", width: 125)
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(left:45),
                        child: Center(
                          child: Image.asset("assets/night.png")
                        )
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        }
      )
    );
  }

  Widget _buildCategrios() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 100,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100,
                child: Image.asset("assets/Rectangle 7192@2x.png"),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left:9,top:5),
                    height: 82,
                    child: Image.asset("assets/Mask Group 25@2x.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(top:26, left:20),
                        child: Image.asset("assets/048-makeup.png", fit: BoxFit.contain),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left:20),
                        child: Image.asset("assets/Categories@2x.png", height: 20),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100,
                child: Image.asset("assets/Rectangle 7191@2x.png"),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left:9, top:5),
                    height: 82,
                    child: Image.asset("assets/Mask Group 26@2x.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(top:30, left:20 ),
                        child: Image.asset("assets/009-makeup-5.png", fit: BoxFit.contain),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left:20),
                        child: Image.asset("assets/Categories 2.png", height: 20),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100,
                child: Image.asset("assets/Rectangle 7190.png"),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left:9, top:5),
                    height: 82,
                    child: Image.asset("assets/Mask Group 27.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(top:30,left:20 ),
                        child: Image.asset("assets/sale.png", fit: BoxFit.contain),
                      ),
                      Container(
                        height: 15,
                        margin: EdgeInsets.only(left:12),
                        child: Image.asset("assets/Categories.png", height: 15),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductCat() {
    return  Container(
      height: 320,
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:10, top: 10),
                  child: Text("Product Catgories", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      fontSize: 15,
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right:10,top: 10),
                  child: Text("View all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      fontSize: 15,
                    )
                  ),
                ),
              ],
            ),
            res != null ?
              Expanded(
                child: ListView.builder(
                  itemCount: res['home']['products_categories'].length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i) {
                    return Container(
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.network(res['home']['products_categories'][i]['icon'], height: 200),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:4, top:6),
                            child: Text( 
                              res['home']['products_categories'][i]['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                            ),
                          ),
                          Container(   
                            margin: EdgeInsets.only(left:4, top:6),
                            child: Text(
                              "${res['home']['products_categories'][i]['total_items']} items",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                )
              )
            :Container()
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCat() {
    return  Container(
    height: 320,
    child: Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:10, top: 10),
                child: Text("Service Catgories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(right:10, top: 10),
                child: Text("View all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 15,
                  )
                ),
              ),
            ],
          ),
          res != null ?
            Expanded(
              child: ListView.builder(
                itemCount: res['home']['services_categories'].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,i) {
                  return Container(
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Image.network(res['home']['services_categories'][i]['icon'], height: 200),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:4, top: 6),
                          child: Text(res['home']['services_categories'][i]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:10, top: 6),
                          child: Text("${res['home']['services_categories'][i]['total_items']} items",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            )
                          ),
                        ),
                      ],
                    ),
                  );
                }
              )
              )
            :Container()
          ],
        ),
      ),
    );
  }

  Widget _buildCommProduct() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left:15),
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(top:10, left:15),
              child: Text("Best Comercial Product",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:70, left:30, bottom: 10, right: 15),
          child: Image.asset("assets/homeMade.png"),
        )
      ],
    );
  }

  Widget _buildHomeMade() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left:15),
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(top:10, left:15),
              child: Text("Best Home Made Product",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:70, left:30, bottom: 15, right: 15),
          child: Image.asset("assets/Rectangle 7160@2x.png"),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    getDataforHome().then((value) {
      res = jsonDecode(value.body);
      setState(() {
        res = res;
      });
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget> [
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60) 
                      ),
                      child: Image.asset("assets/Mask Group 31.png",fit: BoxFit.contain),
                    ),
                  ),
                  _buildWidget()
                ],
              ),
              _buildMakeUp(),
              _buildCategrios(),
              _buildProductCat(),
              _buildServiceCat(),
              _buildCommProduct(),
              _buildHomeMade(),
              
            ],
          ),
        ]
      ),
    );
  }
}
