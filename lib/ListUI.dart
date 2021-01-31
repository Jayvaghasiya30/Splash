import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listbox extends StatelessWidget {
  String itemname;
  listbox(this.itemname);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(9.0),
        padding: EdgeInsets.all(6.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(itemname[0]),
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Text(
              itemname,
              style: TextStyle(
                fontSize: 20,) ,
            ),
          ],
        ),
      ),
    );
  }
}
