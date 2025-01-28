import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adds_controller.dart';

class AddsView extends GetView<AddsController> {
  const AddsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
