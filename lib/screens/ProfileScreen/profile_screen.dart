import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'components/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profilescreen'.tr),
      ),
      body: ProfileScreenBody(),
    );
  }
}
    