import 'package:vrent/models/car.dart';
import 'package:vrent/widgets/default_button.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  final CarModel carModel;

  const Bottom({@required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'OverView',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              carModel.price,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          overview(carModel.text1, Icons.speed),
          overview(
            carModel.text2,
            Icons.car_rental,
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          overview(carModel.text3, Icons.warning),
          overview(carModel.text4, Icons.chair),
        ]),
        DefaultButton(text: 'Rent')
      ],
    );
  }

  Container overview(String text, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          // color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Icon(
              icon,
              color: Colors.blueGrey,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}
