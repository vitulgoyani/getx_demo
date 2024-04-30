import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Count",
              style: TextStyle(fontSize: 30),
            ),
            Obx(
              () => Text(
                "${controller.count}",
                style: const TextStyle(fontSize: 26),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incrementCount();
                },
                child: const Text("+")),
            ElevatedButton(
                onPressed: () {
                  controller.count.value--;
                },
                child: const Text("-")),
          ],
        ),
      ),
    );
  }
}
