import 'package:get/get.dart';

import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('updateprofile_page'.tr),
      ),
      body: Column(
        children: [
          Center(
            child: Text('welcome_to_updateprofile_page'.tr),
          ),
        ],
      ),
    );
  }
}
