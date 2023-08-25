

import 'package:flutter/material.dart';
import 'package:takbalak/mycalars.dart';


class HOme extends StatefulWidget{
  @override
  State<HOme> createState() => _HOmeState();
}

class _HOmeState extends State<HOme> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                // aiconhai bala va nasbat be safhe saiz dadim
                Icon(Icons.menu),
                Image.asset("assets/images/logo.png",
                height: size.height/14,
                ),
                Icon(Icons.search)
              ],),
            ),
            SizedBox(height:30),
            Stack(
              children:[ Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  // aks va andaze hai baksmon
                  height: size.height/4.5,
                  width: size.width/1.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(image:AssetImage("assets/images/poster_test.png"),
                    fit: BoxFit.cover) ),
                    foregroundDecoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        // halt shishi
                        gradient: const LinearGradient(colors: geradintcolor.shishe,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                        ), 
                  ),
                
              ],),
              
                
              
          ])
          ],
        ),
        
      ),
    );
  }
}