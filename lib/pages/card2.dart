import 'package:flutter/material.dart';
import 'package:vrent/models/car.dart';

class Card2 extends StatefulWidget {
  const Card2({Key key}) : super(key: key);

  @override
  State<Card2> createState() => _Card3State();
}

class _Card3State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 70,
                color: Colors.grey,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                          child: Text('')),
                      Image.asset("assets/images/merci cabriolet.png"),
                      Text(
                        'Mercedes Benz',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // child: Text('Si Kecil', style: TextStyle(fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
        ),
      ]
      ),
    );
  }
}
