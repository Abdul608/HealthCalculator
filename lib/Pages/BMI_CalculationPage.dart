import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BmiCalculationPage extends StatefulWidget {


  @override
  State<BmiCalculationPage> createState() => _BmiCalculationPageState();
}

class _BmiCalculationPageState extends State<BmiCalculationPage> {

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
                  height: 350.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('images/bmi.png',height: 80.h,width: 80.w,),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 80),
                          child: TextField(
                            controller: _ageControler,
                            decoration: InputDecoration(
                              labelText: 'Age',
                              hintText: 'e.g 35',
                            ),
                            keyboardType: TextInputType.number,style: TextStyle(),),
                        ),

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
                SizedBox(height: 10.h,),
                GestureDetector(
                  onTap: (){
                    calaculateBMI();
                    _heightControler.clear();
                    _weightControler.clear();
                    _ageControler.clear();
                  },
                  child: Container(
                    height: 50.h,
                    width: 150.h,
                    child:Center(child:  Text('CALCULAT',style: TextStyle(fontSize: 20),)),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: 70.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_result.toStringAsFixed(1),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 100.w,
                      ),
                      IconButton(onPressed: (){
                        setState(() {

                          print('clear');
                        });
                      }, icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: 90.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(getResult().toString()),
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

  getResult() {
    if(_result>=25){
      return 'Overweight';
    }else if(_result> 18.5){
      return 'Underweight';
    }else
      return 'Normal';

  }
}
