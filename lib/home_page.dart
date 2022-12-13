import 'package:flutter/material.dart';
import 'package:flutter_tutorial/details_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 23.0,bottom: 23,left: 20),
          child: Image.asset('assets/images/menu.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17.0,bottom: 17,right: 20),
            child: Image.asset('assets/images/search.png'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
          const  Text('Furniture in \nUnique Style',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5,
          ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('We have wide range of furniture.',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff95553d),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/settings.png',height: 18,color: Colors.white,),
                        Text('Furniture',style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,color: Colors.white
                        ),),
                        Icon(Icons.cancel_sharp,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text('Tables'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text('Chair'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text('Lamp'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text('All',style: TextStyle(fontWeight: FontWeight.w900),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffb97c65),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width/1.28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff95543d),
                      ),
                      child: Row(
                        children: [
                        Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width/1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/lamp.png',),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const[
                                  Text('Stylish Roof Lamp',style: TextStyle(
                                    fontWeight: FontWeight.w900,fontSize: 16
                                  ),),
                                  SizedBox(height: 6,),
                                  Text('We have amazing quality lamp\nWide range.',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 12
                                  ),),
                                  SizedBox(height: 6,),
                                  Text('\$20.00',style: TextStyle(
                                      fontWeight: FontWeight.w900,fontSize: 15
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                          const Align(
                            alignment: Alignment.centerRight,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(Icons.favorite_border,color: Colors.white,),
                             ),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Image.asset('assets/images/table.png',height: 130,fit: BoxFit.fitWidth,),
                  SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text('Modern Table',style: TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 16
                      ),),
                      SizedBox(height: 10,),
                      Text('New style of table for you\nHome and office.',style: TextStyle(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),
                      SizedBox(height: 10,),
                      Text('\$25.00',style: TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const DetailScreen()));
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    Image.asset('assets/images/chair.png',height: 130,fit: BoxFit.fitWidth,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text('Wooden Chair',style: TextStyle(
                            fontWeight: FontWeight.w900,fontSize: 16
                        ),),
                        SizedBox(height: 10,),
                        Text('Amazing stylish in multiple\nMost selling items of this.',style: TextStyle(
                            fontWeight: FontWeight.w400,fontSize: 12
                        ),),
                        SizedBox(height: 10,),
                        Text('\$25.00',style: TextStyle(
                            fontWeight: FontWeight.w900,fontSize: 15
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
