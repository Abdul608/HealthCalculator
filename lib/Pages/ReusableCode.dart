import 'package:flutter/material.dart';

class ReuseableCode extends StatelessWidget {
  final String image;
  final String name;
  final  double? height;
  // final Function onPress;
  const ReuseableCode({Key? key, required this.image,required this.name,this.height, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: 150,
      child: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Image.asset(image)),
            Text(name),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
