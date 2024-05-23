import 'package:flutter/material.dart';
class ItemsWidget extends StatelessWidget {
  @override

  // List of item names
    final List<String> itemNames = [
      "Chicken Burger",
      "Veggie Burger",
      "Big Mac Burger",
      "#1 Chessy",
      "Beef burger",
      "Fish Burger",
      "Spicy Chicken",
      "Mega Mac Burger"

    ];

  Widget build ( BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap : true,
      childAspectRatio:  0.80,

      children: [
        for(int i = 0; i < 4; i++)
          Container(
            padding : EdgeInsets.symmetric (vertical : 5, horizontal : 10),
            margin : EdgeInsets.symmetric(vertical : 7, horizontal : 15),
            decoration : BoxDecoration(
              borderRadius: BorderRadius.circular (20),
              color : Colors.black12,
              boxShadow: [
                BoxShadow(
                  color : Colors.black.withOpacity(0.4,),
                  spreadRadius : 1,
                  blurRadius : 8,
                ),
                
              ],
            ),
            child : Column(
              children: [
                //1
                InkWell(
                  onTap : (){
                    Navigator.pushNamed(context, 'singleItemPage');
                  },
                  child : Container(
                    margin : EdgeInsets.all(10),
                    child : Image.asset(
                      "lib/images/${i + 1}.png",
                      width : 120,
                      height : 120,
                      fit : BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding : EdgeInsets.only(bottom : 8),
                  child : Container(
                    alignment : Alignment.centerLeft,
                    child : Text(
                      itemNames[i],
                      style : TextStyle(
                        fontSize : 18,
                        fontWeight : FontWeight.bold,
                        color : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Special ${itemNames[i]}", 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                ),
                
                
              ],
            ),
          ),
        
      ],
    );
  }
}