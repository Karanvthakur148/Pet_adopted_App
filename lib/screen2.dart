import 'package:flutter/material.dart';
import 'package:untitled4/configration.dart';
class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.blueGrey[200],

              )),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                    Navigator.pop(context);
                  },),
                  IconButton(icon:Icon(Icons.share), onPressed: () {
                    
                  },)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 1,
                  child: Image.asset('images/pet-cat2.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20),

                ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter,
          child: Container(
            margin:EdgeInsets.symmetric(horizontal: 20) ,
            height: 150,
              child:Row(
                children: [
                  Container(
                    height: 60,
                      width: 70,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Icon(Icons.favorite_border,color: Colors.white,),

                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(color: primaryGreen,borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text('Adoption',style: TextStyle(
                          color: Colors.white,fontSize: 24,
                        ),

                    ),
                      ),
                  )
                  ), ],
              ) ,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
              ),

          ),)
        ],
      ),
    );
  }
}
