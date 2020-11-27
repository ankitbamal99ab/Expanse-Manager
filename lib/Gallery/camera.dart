import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


//import 'package:flutter/material.dart';
//import 'package:camera/camera.dart';
//
//
//List<CameraDescription> cameras;  // gives the list of cameras
//
//Future<void> main() async
//{
//  // acces the camera
//  cameras=await availableCameras();
//  runApp(Camera());
//}
//
//class Camera extends StatefulWidget {
//
//  @override
//  _CameraState createState() => _CameraState();
//}
//
//class _CameraState extends State<Camera> {
//
//  CameraController controller;
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    controller=new CameraController(cameras[0], ResolutionPreset.medium);
//    controller.initialize().then((_){
//      if(!mounted)
//      {
//        return;
//      }
//      setState(() {});
//    });
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    controller?.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if(!controller.value.isInitialized)
//    {return  Container();}
//
////    return new AspectRatio(
////      aspectRatio: controller.value.aspectRatio,
////      child: new CameraPreview(controller),
////    );
//      return RotationTransition(
//          turns: AlwaysStoppedAnimation(270/360),
//        child: CameraPreview(controller),
//      );
//  }
//}


