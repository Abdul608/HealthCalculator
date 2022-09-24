import 'package:flutter/material.dart';
import 'package:health_calculator/Pages/ReusableCode.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health Calculator',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(0,-7)
              ),
            ],
          ),
          // margin: EdgeInsets.only(top: 20),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/IronPage");
                          },
                          child: ReuseableCode(
                            height: 170,
                              image: 'images/iron.webp',
                              name: 'Iron Deficit'),
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/RmiPage");
                          },
                          child: ReuseableCode(
                          height: 150,
                            image: 'images/inr.png',
                            name: 'RMI'),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/PregnancyPage");
                          },
                          child: ReuseableCode(
                              height: 150,
                              image: 'images/mother.png',
                              name: 'Pregnanacy'),
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/BmiPage");
                          },
                          child: ReuseableCode(
                            height: 170,
                            image: 'images/bmi.png',
                            name: 'BMI'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/LeanBodyPage");
                          },
                          child: ReuseableCode(
                              height: 170,
                              image: 'images/leanBody.png',
                              name: 'Lean Body'),
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/InrPage");
                          },
                          child: ReuseableCode(
                            height: 150,
                            image: 'images/leanBody.png',
                            name: 'INR Calculator'),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
