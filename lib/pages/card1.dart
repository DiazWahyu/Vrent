import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../providers/auth.dart';

import '../pages/add_product_page.dart';
import '../widgets/product_item.dart';

import 'search_bar.dart';
import 'package:vrent/models/car.dart';
import 'car_card.dart';

class Card1 extends StatefulWidget {
  const Card1({Key key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  
  
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogs"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SearchBar(),
            Container(
              margin: EdgeInsets.only(
                right: 15,
                left: 15,
                top: 10,
                bottom: 0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Cars',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Column(
              children: List.generate(
                carmodel.length,
                (index) => CarModelCard(
                  carModel: carmodel[index],
                ),
              ),
            )
          ],
        ),
      ), 
      
    );
  }
}