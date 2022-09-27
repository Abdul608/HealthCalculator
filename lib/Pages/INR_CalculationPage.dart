import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class InrCalculationPage extends StatefulWidget {


  @override
  State<InrCalculationPage> createState() => _InrCalculationPageState();
}

class _InrCalculationPageState extends State<InrCalculationPage> {

  final TextEditingController _heightControler=new TextEditingController();
  final TextEditingController _weightControler=new TextEditingController();
  final TextEditingController _ageControler=new TextEditingController();
  double _result=0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:const Text('INR calculation',style: TextStyle(color: Colors.black),),backgroundColor: Colors.grey,),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Expanded(
            child: ListView(
              children: [
                Container(
                  height: 300.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('images/inr.png',height: 80.h,width: 80.w,),
                        SizedBox(
                          height: 10.h,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 80),
                          child: TextField(
                            controller: _heightControler,
                            decoration: InputDecoration(
                              labelText: 'Actual Body weight:',
                              hintText: 'kg',

                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 80),
                          child: TextField(
                            controller: _weightControler,
                            decoration: InputDecoration(
                              labelText: 'Actual Hb:',
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
                    width: 150.w,
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
                        width: 100.h,
                      ),
                      Icon(Icons.delete),
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
                  child:SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(' INR = Patient PT ÷ Control PT \n INR= (PT_test/PT_normal)^ISI \n INR	=	international normalized ratio \n PT_test	=	tested prothrombin time \n PT_normal	=	normal prothrombin time \n ISI	=	international sensitivity index'),
                      //   Text(_result),
                      ],
                    ),
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
      double PatientPT=double.parse(_heightControler.text)/100;
      double ControlPT=double.parse(_weightControler.text);


      //INR = Patient PT ÷ Control PT
    //  double heightSqure= height*height;
      double INR=(PatientPT/ControlPT);
      _result=INR;
      setState(() {

      });
    });
  }

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
