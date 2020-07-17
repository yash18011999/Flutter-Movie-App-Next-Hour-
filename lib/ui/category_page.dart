import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 12),
        child: Column(

          children: <Widget>[
            Row(
              children: <Widget>[
                Text("New", style: TextStyle(color: Colors.red[900], fontSize: 25, fontWeight:FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom:0 ,top:0 ,left:0 ,right:5 ),
              height: 180.0,
              color: Colors.deepOrange,
              margin:EdgeInsets.only(right:8),
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Container(

                        margin: EdgeInsets.only(right: 0,left: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red
                        ),


                        child: Material(
                          borderRadius: BorderRadius.circular(40),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset("assets/images/img.jpg",height: 80),
                              Container(
                                color: Colors.white,
                                margin: EdgeInsets.only(left:36,top:15 ),
                                child: Row(
                                  children: <Widget>[
                                    Text("Lucky",style: TextStyle(color: Colors.red[900],fontSize: 20,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
                                  ],
                                ),
                              ),
                              //Text("Lucky",style: TextStyle(color: Colors.red[900],fontSize: 20,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
                            ]
                          ),
                          ),

                        ),
                      ),
                    );
                  }),
            ),
            Column(

              children: <Widget>[
                Row(

                  children: <Widget>[
                    Text("Movies",
                      style: TextStyle(color: Colors.red[900], fontSize: 25,fontWeight:FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                //second card
              Container(
                padding: EdgeInsets.only(bottom:0 ,top:0 ,left:0 ,right:5 ),
                height: 180.0,
                color: Colors.red,
                margin:EdgeInsets.only(left: 0,right: 10),
                child: ListView.builder(

                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(
                        width: 150,
                        margin: EdgeInsets.only(left:0,top:0,right:5,bottom: 0),

                        child: Card(
                          margin: EdgeInsets.only(left: 5,top:5,right: 25,bottom: 5),
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 0),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red
                            ),


                            child: Material(
                              borderRadius: BorderRadius.circular(40),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset("assets/images/img.jpg",height: 80,width: 180,),
                                    Container(
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left:36,top:15 ),
                                      child: Row(
                                        children: <Widget>[
                                          Text("Lucky",style: TextStyle(color: Colors.red[900],fontSize: 20,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    ),
                                    //Text("Lucky",textAlign: TextAlign.center,)
                                  ],
                                ),
                              ),

                            ),
                          ),
                        ),
                      );
                }),
              ),
                Column(

                  children: <Widget>[
                    Row(

                      children: <Widget>[
                        Text("Series",
                          style: TextStyle(color: Colors.red[900], fontSize: 25,fontWeight:FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    //second card
                    Container(
                      padding: EdgeInsets.only(bottom:0 ,top:0 ,left:0 ,right:5 ),
                      height: 180.0,
                      color: Colors.deepOrange,
                      margin:EdgeInsets.only(right:8,),
                      child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.red
                                ),


                                child: Material(
                                  borderRadius: BorderRadius.circular(40),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset("assets/images/img.jpg",height: 80),
                                        Container(
                                          color: Colors.white,
                                          margin: EdgeInsets.only(left:36,top:15 ),
                                          child: Row(
                                            children: <Widget>[
                                              Text("Lucky",style: TextStyle(color: Colors.red[900],fontSize: 20,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
                                            ],
                                          ),
                                        ),
                                        //Text("Lucky",textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                            );
                          }),
                    ),
                    Column()
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Menu'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        onTap: _onItemTapped,
      ),
    );
  }
}
