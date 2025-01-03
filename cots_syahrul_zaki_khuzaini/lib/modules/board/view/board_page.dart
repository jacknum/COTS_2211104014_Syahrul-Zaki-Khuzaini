import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/board_controller.dart';
import '../widgets/bottom_nav_item.dart';

class BoardPage extends StatelessWidget {
  final boardController = Get.find<BoardController>();

  final List<Widget> pages = [
    Center(child: Text("Home")),
    Center(child: Text("Promo")),
    Center(child: Text("Pesanan")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[boardController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: boardController.selectedIndex.value,
          onTap: boardController.changeTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), label: "Promo"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Pesanan"),
          ],
        ),
      ),
    );
  }
}
