import 'package:vrent/models/car.dart';
import 'package:flutter/material.dart';

import 'bottom_detail.dart';

class DetailsScreen extends StatelessWidget {
  final CarModel carModel;

  const DetailsScreen({@required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text('Detail', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: DetailsBody(
          carModel: carModel,
        ),
      ),
    );
  }
}

class DetailsBody extends StatelessWidget {
  final CarModel carModel;

  const DetailsBody({@required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carModel.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  carModel.year,
                  style: TextStyle(fontSize: 20, height: 1.5),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Image.asset(
              carModel.image,
              width: 350,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.blueGrey),
            child: Bottom(
              carModel: carModel,
            ),
          ),
        )
      ],
    );
  }
}
