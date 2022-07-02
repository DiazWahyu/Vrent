import 'package:vrent/models/car.dart';
import 'package:flutter/material.dart';
import 'details.dart';


class CarModelCard extends StatelessWidget {
  final CarModel carModel;

  const CarModelCard({@required this.carModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, primaryAnimation, secondaryAnimation) =>
                DetailsScreen(carModel: carModel),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Stack(children: [
          Container(
            width: 200,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  carModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  carModel.subtitle,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 2
              ),
              width: 200,
              height: 25,
              child: Text(
                carModel.price,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 10,
            child: Image.asset(
              carModel.image,
              height: 90,
            ),
          )
        ]),
      ),
    );
  }
}
