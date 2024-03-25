import 'package:flutter/material.dart';
import 'package:flutter_project01/constants/constant.dart';
import 'package:flutter_project01/component/coin_card.dart';
import 'package:flutter_project01/component/wallet_card.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const Column(
        children: [
          WalletCard(),
          CoinCard()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.wallet,color: iconsActivateColors),
            Icon(Icons.calculate_outlined,color:iconsDefaultColors),
            Icon(Icons.grid_view_rounded,color: iconsDefaultColors),
            Icon(Icons.settings,color: iconsDefaultColors,)
          ],
        ),
      ),
    );
  }
}
