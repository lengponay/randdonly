import 'package:flutter/material.dart';
import 'package:western/widgets/itemsWidget.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Icon : Icons.grid_4x4_rounded,
      length : 4,
      child: Scaffold(
        backgroundColor : Color.fromARGB(255, 213, 154, 82),
        body : SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top : 4),
            child : Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal : 15),
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children : [
                      InkWell(
                        onTap : (){},
                        child : Icon(
                          Icons.menu,
                          color : Colors.white,
                          size : 35,
      
                        ),
                      ),
                      InkWell(
                        onTap : (){},
                        child : Icon(
                          Icons.search,
                          color : Colors.white,
                          size : 35,
                  
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height : 15,
                ),
                Padding(
                  padding : EdgeInsets.symmetric(horizontal : 15),
                  child : Text(
                    "FoodBites",
                    style : TextStyle(
                      fontSize : 32,
                      color : Colors.white,
                      fontWeight : FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height : 4),
                Padding(
                  padding : EdgeInsets.symmetric(horizontal : 20),
                  child : Text(
                    "Delivery on time!",
                    style : TextStyle(
                      fontSize : 18,
                      color : Color.fromARGB(255, 255, 243, 243),
                      fontWeight : FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height : 30,),
                TabBar(
                  isScrollable : true,
                  indicator : BoxDecoration(
                   
                  ),
                  labelStyle: TextStyle(
                    fontSize : 20,
                    color : Colors.white,
                    fontWeight : FontWeight.bold,

                  ),
                  labelPadding : EdgeInsets.symmetric(horizontal : 20),
                  tabs : [
                    Tab(text : "Burger"),
                    Tab(text : "Pizza"),
                    Tab(text : "Pasta"),
                    Tab(text : "Salad"),
                    Tab(text : "Soft Drinks"),
                    Tab(text : "Beer"),
                  ],
                ),
                Flexible(
                  flex : 1,
                  child : TabBarView(
                    children : [
                      // Container(),
                      ItemsWidget(
                        
                      ),
                      Container(color: const Color.fromARGB(255, 240, 218, 216),),
                      Container(color: const Color.fromARGB(255, 157, 140, 139),),
                      Container(color: const Color.fromARGB(255, 169, 156, 155),),
                      
                    ],
                  ),
                ),
                BottomNavigationBar(items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label:"cart"),
                  BottomNavigationBarItem(icon: Icon(Icons.person),label:"Account"),
                ],)
              ],
            )
          ),
          ),
      ),
    );
  }
}