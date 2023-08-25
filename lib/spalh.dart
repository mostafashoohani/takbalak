

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:takbalak/home.dart';
import 'package:takbalak/mycalars.dart';

class spalsh extends StatefulWidget{
  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {
  @override
  void initState() {
    // dar 3 sani mirim safhi safhi home
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context)=>HOme()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // aks tak balak
            Image.asset("assets/images/logo.png",height: 164,width: 200,),      
            // fasle 
            SizedBox(height: 50,),
            // on daira kocholo
            SpinKitSpinningLines(
              color: soildcolor.navashtehat,
              size: 50,
            )
          ],),
        ),
      ),
    );
  }
}