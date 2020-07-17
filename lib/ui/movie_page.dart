import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoviePage extends StatefulWidget{
  MoviePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MoviePageState createState() =>_MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  int _selectedIndex=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);


    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(10),
        child:ListView(
          children: <Widget>[
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 15),
              //color: Colors.orangeAccent,
              child: Text("New",textAlign: TextAlign.start,style: TextStyle(color: Color(0xFFC53542),fontSize: 23,fontWeight: FontWeight.bold),),
            ),
            Container(
                height: 180,
                // color: Colors.orangeAccent,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:5,left:10 ,right:10 ,bottom:10 ),
                            child: Container(
                              height: 150,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5.0, 5.0), //(x,y)
                                    blurRadius: 4.0,
                                  ),
                                ],
                              ),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  //color: Colors.blue,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          color: Colors.white,
                                          height: 100,
                                          width: 120,
                                          child:Column(
                                            children: <Widget>[
                                              Container(
                                                // color: Colors.green,
                                                height: 100,
                                                width: 120,
                                                child:Image.asset("assets/images/sidechickgang.jpg",fit: BoxFit.cover,),

                                              ),

                                            ],

                                          )
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 50,
                                        child:Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(

                                                padding: EdgeInsets.only(left: 2,right:2 ),
                                                //color: Colors.green,
                                                height: 15,
                                                child: Text("Sidechick",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),
                                              ),
                                              Container(
                                                //color: Colors.red,
                                                padding: EdgeInsets.only(left: 2,right:2 ),
                                                height: 15,
                                                child: Text("Gang",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),

                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }
                )
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 15),
              //color: Colors.orangeAccent,
              child: Text("Movies",textAlign: TextAlign.start,style: TextStyle(color: Color(0xFFC53542),fontSize: 23,fontWeight: FontWeight.bold),),
            ),
            Container(
                height: 180,
                //color: Colors.orangeAccent,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:5,left:10 ,right:10 ,bottom:10 ),
                            child: Container(
                              height: 150,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5.0, 5.0), //(x,y)
                                    blurRadius: 4.0,
                                  ),
                                ],
                              ),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  //color: Colors.blue,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          color: Colors.white,
                                          height: 100,
                                          width: 120,
                                          child:Column(
                                            children: <Widget>[
                                              Container(
                                                // color: Colors.green,
                                                height: 100,
                                                width: 120,
                                                child:Image.asset("assets/images/sidechickgang.jpg",fit: BoxFit.cover,),

                                              ),

                                            ],

                                          )
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 50,
                                        child:Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(

                                                padding: EdgeInsets.only(left: 2,right:2 ),
                                                //color: Colors.green,
                                                height: 15,
                                                child: Text("Sidechick",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),
                                              ),
                                              Container(
                                                //color: Colors.red,
                                                padding: EdgeInsets.only(left: 2,right:2 ),
                                                height: 15,
                                                child: Text("Gang",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),

                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }
                )
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 15),
              //color: Colors.orangeAccent,
              child: Text("Series",textAlign: TextAlign.start,style: TextStyle(color: Color(0xFFC53542),fontSize: 23,fontWeight: FontWeight.bold),),
            ),
            Container(
                height: 180,
                // color: Colors.orangeAccent,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:5,left:10 ,right:10 ,bottom:10 ),
                            child: Container(
                              height: 150,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5.0, 5.0), //(x,y)
                                    blurRadius: 4.0,
                                  ),
                                ],
                              ),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  //color: Colors.blue,
                                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          color: Colors.white,
                                          height: 100,
                                          width: 120,
                                          child:Column(
                                            children: <Widget>[
                                              Container(
                                                // color: Colors.green,
                                                height: 100,
                                                width: 120,
                                                child:Image.asset("assets/images/sidechickgang.jpg",fit: BoxFit.cover,),

                                              ),

                                            ],

                                          )
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 50,
                                        child:Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(

                                                  padding: EdgeInsets.only(left: 2,right:2 ),
                                                  //color: Colors.green,
                                                  height: 15,
                                                  child: Text("Sidechick",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),
                                                ),
                                                Container(
                                                  //color: Colors.red,
                                                  padding: EdgeInsets.only(left: 2,right:2 ),
                                                  height: 15,
                                                  child: Text("Gang",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),

                                                )
                                              ],
                                            ),
                                          //child: Text("Sidechick Gang",style: TextStyle(fontSize: 15,color: Color(0xFFC53542),fontWeight: FontWeight.w300),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }
                )
            ),

          ],
        ) ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
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





