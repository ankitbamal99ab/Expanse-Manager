import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gallery_manager/Gallery/Album.dart';
import 'package:gallery_manager/Gallery/Profile.dart';
import 'package:gallery_manager/Gallery/camera.dart';
import 'package:gallery_manager/HomePage.dart';

import 'TakePic.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override


  PageController _pageController=PageController();
List<Widget> _screens=[
Camera(),Album(),Profile(),
];
int _selectedIndex=0;
void _onPageChanged(int index)
{
  setState(() {
    _selectedIndex=index;
  });
}
  void _itemTapped(int selectedIndex)
  {
    _pageController.jumpToPage(selectedIndex);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.collections),
        title: Text("Gallery"),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>TakePictureScreen()));
          })
        ],
      ),
      backgroundColor: Colors.red,
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),



      bottomNavigationBar: CurvedNavigationBar(
        onTap: _itemTapped,
        backgroundColor: Colors.red,
        height: 60,
        items: [
          Icon(Icons.camera, size: 30,color: Colors.redAccent,),
          Icon(Icons.album, size: 30,color: Colors.redAccent),
          Icon(Icons.person, size: 30,color: Colors.redAccent),
        ],
      ),
    );
  }
}
