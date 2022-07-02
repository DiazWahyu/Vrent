import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:vrent/pages/card2.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Widget widget;

  const DefaultButton({@required this.text, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        onPressed: () {

          CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: '',
          //autoCloseDuration: Duration(seconds: 2),
          );
        },
        minWidth: double.infinity,
        height: 50,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
