import 'package:flutter/cupertino.dart';
import 'package:flutter_project01/router/getX_router.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    initialRoute: GetXRouter().defaultPage(),
    getPages: GetXRouter().getRouter(),
  ));
}