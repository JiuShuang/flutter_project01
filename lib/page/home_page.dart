import 'package:flutter/material.dart';
import 'package:flutter_project01/constants/constant.dart';
import 'package:flutter_project01/component/coin_card.dart';
import 'package:flutter_project01/component/wallet_card.dart';
import 'package:flutter_project01/controller/BottomNavController.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> itemsBar=[
      BottomNavigationBarItem(
          icon: Icon(Icons.wallet,color: iconsDefaultColors),
          activeIcon: Icon(Icons.wallet,color: iconsActivateColors),
          label: ""
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.calculate_outlined,color:iconsDefaultColors),
          activeIcon: Icon(Icons.calculate_outlined,color:iconsActivateColors),
          label: ""
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_rounded,color: iconsDefaultColors),
          label: ""
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: iconsDefaultColors),
          label: ""
      )
    ];

    BottomNavController bottomNavController = Get.put(BottomNavController());


    return Scaffold(
      body:const Column(
        children: [
          WalletCard(),
          CoinCard()
        ],
      ),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(
            backgroundColor: Colors.white10.withOpacity(0.5),
            currentIndex: bottomNavController.currentIndex.value,
            items: itemsBar,
            onTap: (e){
              bottomNavController.setCurrentIndex(e);
            },
          ),
      )
    );
  }
}
