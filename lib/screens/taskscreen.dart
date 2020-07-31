import 'package:flutter/material.dart';
import 'package:todoey/screens/bottomsheet.dart';
import 'package:todoey/selfextractedwidgets.dart';
import 'package:todoey/modals/task.dart';

class Tasksscreen extends StatefulWidget {

  @override
  _TasksscreenState createState() => _TasksscreenState();
}

class _TasksscreenState extends State<Tasksscreen> {
  List<task> tasks = [
    task(name: 'bhosdimon',),
    task(name:  'chutiyamon',),
    task(name: 'gandumon',),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,right: 30,left: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius:35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.teal,
                    size: 50,
                  ),
                ),
                SizedBox(height: 30,),
                Text('Todoey', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('${tasks.length} Tasks', style: TextStyle(fontSize: 15, color: Colors.white60),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
              ),
              child: listview(tasks: tasks,),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
        onPressed: (){
          showModalBottomSheet(context: context, builder:(context) => Addtaskscreen(addtaskcallback: (inputrecieved){
            setState(() {
              tasks.add(task(name: inputrecieved,));
              Navigator.pop(context);
            });
          }));
        },
      ),
    );
  }
}


