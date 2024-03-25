import 'package:flutter/material.dart';
import 'package:flutter_project01/component/import_wallet.dart';

import '../constants/constant.dart';
class ImportWalletPage extends StatelessWidget {
  const ImportWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Import Wallet",style: TextStyle(color: mainColor)),
      ),
      body:const Column(
        children: [
          ImportWallet()
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
