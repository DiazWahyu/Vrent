import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';

class Card3 extends StatefulWidget {
  const Card3({Key key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  Widget _buildSingleContainer(
      {@required String startText, @required String endText}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            startText,
            style: TextStyle(fontSize: 17, color: Colors.black45),
          ),
          Text(
            endText,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    maxRadius: 65,
                    backgroundImage: AssetImage('images/anonim.png'),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSingleContainer(
                      startText: "Email",
                      endText: "diazwahyubriliand@gmail.com",
                    ),
                    _buildSingleContainer(
                      startText: "Password",
                      endText: "******",
                    ),
                  ]),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 200,
              child: MaterialButton(
                minWidth: double.infinity,
                height: 40,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Edit',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 200,
              child: MaterialButton(
                minWidth: double.infinity,
                height: 40,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Keluar',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                onPressed: () =>
                    Provider.of<AuthCntrl>(context, listen: false).logout(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
