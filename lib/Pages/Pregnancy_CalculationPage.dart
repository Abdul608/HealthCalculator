import 'dart:math';
import 'package:flutter/material.dart';
class PregnancyCalculationPAge extends StatefulWidget {


  @override
  State<PregnancyCalculationPAge> createState() => _PregnancyCalculationPAgeState();
}

class _PregnancyCalculationPAgeState extends State<PregnancyCalculationPAge> {

  final TextEditingController _heightControler=new TextEditingController();
  final TextEditingController _weightControler=new TextEditingController();
  final TextEditingController _ageControler=new TextEditingController();
  double _result=0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Body Mass Index',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Expanded(
            child: ListView(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('images/leanBody.png',height: 80,width: 80,),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Height'),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 80),
                          child: TextField(
                            controller: _heightControler,
                            decoration: InputDecoration(
                              labelText: 'height',
                              hintText: '162 inch',

                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Text('weight'),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 80),
                          child: TextField(
                            controller: _weightControler,
                            decoration: InputDecoration(
                              labelText: 'Weight',
                              hintText: '60 kg',
                            ),
                            keyboardType: TextInputType.number,style: TextStyle(),),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    calaculateBMI();
                    _heightControler.clear();
                    _weightControler.clear();
                    _ageControler.clear();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    child:Center(child:  Text('CALCULAT',style: TextStyle(fontSize: 20),)),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_result.toStringAsFixed(1),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(Icons.delete),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 90,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     // Text(getResult().toString()),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void  calaculateBMI(){
    setState(() {
      double height=double.parse(_heightControler.text)/100;
      double weight=double.parse(_weightControler.text);

      double heightSqure= height*height;
      double result=(weight/heightSqure) as double;
      _result=result;
      setState(() {

      });
    });
  }
  //
  // getResult() {
  //   if(_result!>=25){
  //     return 'Overweight';
  //   }else if(_result!> 18.5){
  //     return 'Underweight';
  //   }else
  //     return 'Normal';
  //
  // }
}
