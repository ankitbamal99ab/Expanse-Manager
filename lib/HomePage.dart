//import 'package:flutter/cupertrsino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_manager/Exapanse%20manager/manager.dart';
import 'package:gallery_manager/Gallery/gallery_homepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
//        icon: Image.asset('assets/logo.png'),
        leading: Icon(Icons.favorite,color: Colors.red,),
        title: Text("@ßåmål",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),),
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Container(
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 100, 40, 100),
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text("Gallery",style: TextStyle(color: Colors.red),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color:Colors.red),
                      ),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Gallery()));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text("Manager",style: TextStyle(color: Colors.red),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color:Colors.red),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Manager()));
                    },
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
