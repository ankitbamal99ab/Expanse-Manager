import 'package:flutter/material.dart';

class Manager extends StatefulWidget {
  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {

  void showalertdialog()
  {
    showDialog(
        context: context,
        builder: (context) =>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
          title: Text(
            "Add Description"
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                autofocus:true ,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RaisedButton(
                      onPressed: (){},
                    color: Colors.purple,
                    child: Text(
                      "ADD",
                    ),
                      ),
                ],
              )
            ],
          ),
    )
    );
  }

  Widget mycard(String task)
  {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$task",
            style: TextStyle(
              fontSize:18.0,

            ),
          ),
          onLongPress: (){
            print("Should get deleted");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
         Icons.add,
         color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
      appBar: AppBar(
        title: Text("Manager",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(Icons.money),
      ),
      backgroundColor:Colors.black ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycard("Buy Washing machine '/n' 2000"),
            mycard("Room rent \n 3000 "),
            mycard("Buy Gas \n 4000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),
            mycard("Buy Washing machine '/n' 2000"),
            mycard("Room rent \n 3000 "),
            mycard("Buy Gas \n 4000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),
            mycard("MObile Recharge \n 5000"),

          ],
        ),
      ),
    );
  }
}
