import 'package:flutter/material.dart';

class CarModel {
  final String title, subtitle, price, image, year, text1, text2, text3, text4;

  const CarModel({
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.image,
    @required this.year,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.text4,
  });
}

List<CarModel> carmodel = [
  CarModel(
    title: 'Mercedes Benz Cabriolet',
    subtitle: 'Automobile',
    price: '\$200/day',
    image: 'assets/images/merci cabriolet.png',
    year: '2020',
    text1: '300km',
    text2: 'Automatic',
    text3: 'Diesel',
    text4: '4 seats',
  ),
  CarModel(
    title: 'Lamborghini',
    subtitle: 'Automobile',
    price: '\$300/day',
    image: 'assets/images/lambo aventador.png',
    year: '2020',
    text1: '450km',
    text2: 'Manual',
    text3: 'Diesel',
    text4: '4 seats',
  ),
  CarModel(
    title: 'Jeep',
    subtitle: 'Automobile',
    price: '\$250/day',
    image: 'assets/images/jeep.png',
    year: '2019',
    text1: '350km',
    text2: 'Automatic',
    text3: 'Diesel',
    text4: '4 seats',
  ),
  CarModel(
    title: 'Lexus 470',
    subtitle: 'Automobile',
    price: '\$250/day',
    image: 'assets/images/lexus2.png',
    year: '2020',
    text1: '350km',
    text2: 'Automatic',
    text3: 'Petrol',
    text4: '6 seats',
  ),
  CarModel(
    title: 'Vespa',
    subtitle: 'Automobile',
    price: '\$250/day',
    image: 'assets/images/vespa.png',
    year: '2020',
    text1: '150km',
    text2: 'Automatic',
    text3: 'Petrol',
    text4: '2 seats',
  ),
  CarModel(
    title: 'Harley-Davidson',
    subtitle: 'Automobile',
    price: '\$250/day',
    image: 'assets/images/harley.png',
    year: '2020',
    text1: '250km',
    text2: 'Automatic',
    text3: 'Petrol',
    text4: '2 seats',
  ),
];
