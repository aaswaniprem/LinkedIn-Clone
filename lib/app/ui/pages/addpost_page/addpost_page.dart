
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/addpost_controller.dart';


class AddPostPage extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPostPage'),
      ),
      body: SafeArea(
        child: Text('AddPostController'),
      ),
    );
  }
}
  