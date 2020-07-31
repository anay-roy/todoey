import 'package:flutter/material.dart';


class Addtaskscreen extends StatelessWidget {


  final Function addtaskcallback;
  Addtaskscreen({this.addtaskcallback});


  @override
  Widget build(BuildContext context) {
    String inputrecieved;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                inputrecieved = value;
                },
            ),
            SizedBox(height: 20,),
            FlatButton(
              onPressed: (){
                addtaskcallback(inputrecieved);
              },
              child: Text('ADD', style: TextStyle(color: Colors.white, fontSize: 20),),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}