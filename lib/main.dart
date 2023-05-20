import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/moddel/TravelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex=0;
  double imageSiz=60;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var borderRadius2 = BorderRadius.circular(50);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(color: Colors.white,
              width: double.infinity,
              height: size.height/1.8,
              child: Stack(
                children: [
                  Container(/////////image back
                    width: double.infinity,
                    height: size.height/2.2,
                    decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(60),
                        bottomRight: const Radius.circular(60),
                      ),
                      image:DecorationImage(image: AssetImage((travelList[_selectedIndex].image)),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
          
                  ////////////head icons
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(16,20,16,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(113, 236, 225, 225),
                        ),
                        child: const Icon(CupertinoIcons.arrow_left),
                        ), 
                          Container(
                          width: 50,
                          height: 50,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(113, 236, 225, 225),
                        ),
                        child: const Icon(CupertinoIcons.heart),
                        ), 
                      ]
                    ),
                    ),
                  ),
                  ////list iimages
                  Positioned(
                    right: 0,
                    top: 80,
                    child: SizedBox(
                      width: 90,
                      height: double.maxFinite,
                      child: ListView.builder(////////////////list iimages
                        itemCount: travelList.length,
                        itemBuilder: (BuildContext context, int index) { 
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex=index;

                                  });

                                },
                                child: AnimatedContainer(
                                  decoration: BoxDecoration(////////////cadre sefid +image
                                    border: Border.all(color: _selectedIndex==index?Color.fromARGB(255, 158, 174, 181):Colors.white,
                                    width: 3),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image:AssetImage(travelList[index].image), 
                                    fit: BoxFit.fill,)
                                    ),
                                  width: _selectedIndex==index?imageSiz+15:imageSiz,
                                  height: _selectedIndex==index?imageSiz+15:imageSiz,
                                  duration:const Duration(microseconds: 500),


                                  ),


                              ),
                            ),

                          ],
                        );
                      },

                      ),
                    ),
                  ),
                  ///name+location
                  Positioned(
                  bottom: 90,
                  left: size.width/9,
                  //left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[_selectedIndex].name,
                        style: const TextStyle(color: Colors.white,
                          fontSize: 20,
                            fontWeight: FontWeight.bold,

                        ),
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.placemark_fill,color: Colors.white,),
                            Text(travelList[_selectedIndex].location,
                            style: const TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,

                            ),),
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
              ),
              Container(
                color: Colors.white, 
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(40, 0, 0, 0),width: 1),

                          ),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Distanse"),
                                Text(travelList[_selectedIndex].distanse + "km")
                              ],
                            ),
                            ),

                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(40, 0, 0, 0),width: 1),

                          ),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Temp"),
                                Text(travelList[_selectedIndex].temp+"° C")
                              ],
                            ),
                            ),

                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(40, 0, 0, 0),width: 1),

                          ),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Raiting"),
                                Text(travelList[_selectedIndex].rating)
                              ],
                            ),
                            ),

                        )

                    ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Discription'),
                          ExpandableText(
                            travelList[_selectedIndex].discription,
                            expandText: "readMore",
                            collapseText: "collapse",

                          ),
                          ///////////last card price
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Total Price",style: TextStyle(fontSize: 30,color: Colors.black),
                                ),
                                Text(travelList[_selectedIndex].price + "\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                              ],
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                //borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Icon(CupertinoIcons.arrow_right,color: Colors.white,),

                            )

                          ],)

                        ],
                      ),
                    )

                  ],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}