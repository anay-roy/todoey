
import 'package:flutter/material.dart';
import 'package:todoey/modals/task.dart';
import 'package:todoey/screens/taskscreen.dart';


class listtile extends StatelessWidget {

  final bool ischecked ;
  final String tasktitle;
  final Function checkedboxcallback;
  listtile({this.ischecked, this.tasktitle, this.checkedboxcallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          tasktitle,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
          value: ischecked,
          activeColor: Colors.teal,
          onChanged: checkedboxcallback
      ),
    );
  }
}


class listview extends StatefulWidget {

  final List<task> tasks;
  listview({this.tasks});

  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return listtile(
          tasktitle: widget.tasks[index].name,
          ischecked: widget.tasks[index].isdone,
          checkedboxcallback: (newvalue){
            setState(() {
              widget.tasks[index].toggledone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
