import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false ,
    home: const City(),) );
}

class City  extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  List image=["images/Taj-Mahal.jpg","images/London-Bridge.jpg","images/statue-of-liberty.jpg","images/vish.jpg"];
  List l1=["Delhi","London","Newyork","Qatar"];
  List l2=["India","Britain","USA","UAE"];
  List l3=["Population:19 mill","Population:8 mill","Population:2.4 mill","Population:10 mill"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black12,
      appBar: AppBar(centerTitle: true,
        title: Text("Popular Cities",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: ListView.builder(
        shrinkWrap: true,
           itemCount: l1.length,
          itemBuilder:(BuildContext context,int i){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 100,width: 100,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                        image: AssetImage("${image[i]}"),
                       ),
                     ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${l1[i]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        SizedBox(height: 15,),
                        Text("${l2[i]}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                        Text("${l3[i]}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
          }),
    );
  }
}
