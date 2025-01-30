import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_form_controller.dart';

class LoginFormView extends GetView<LoginFormController> {
  const LoginFormView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginFormView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginFormView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
