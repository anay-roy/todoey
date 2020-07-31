class task{

  final String name;
  bool isdone;
  task({this.isdone = false, this.name});
  void toggledone(){
    isdone = !isdone;
  }


}