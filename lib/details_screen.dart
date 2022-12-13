import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 0 ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new,size: 20,)),
        elevation: 0,
        actions: const[
          Padding(
            padding: const EdgeInsets.only(top: 17.0,bottom: 17,right: 20),
            child: Icon(Icons.favorite_border,size: 20,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(transform: Matrix4.identity()
            ..rotateZ(5 *3.1415927/180),
              child: Image.asset('assets/images/armchair.png'),
            ),
            SizedBox(height: 40,),
            const Text('Cool Armchair',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900
            ),),
            SizedBox(height: 10,),
            const Text('Amazing stylish in multiple colors choice we have for Most selling item of this year. we have easy return product Options at our all stores in UAE.',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 105,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap:(){
                              setState(() {
                                count++;
                              });
                            },
                            child: Icon(Icons.add,color: Colors.grey.shade700,)),
                        Text('$count',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: InkWell(
                              onTap: (){
                                setState(() {
                                  count--;
                                });
                              },
                              child: Icon(Icons.minimize,color: Colors.grey.shade700,)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  children:const [
                    Text('Total Price',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 6,),
                    Text('\$55.00',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),)
                  ],
                ),
                SizedBox(width:30 ,),
                Container(
                  height: 60,
                  width: 50,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color(0xff95543d),
                  ),
                  child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
