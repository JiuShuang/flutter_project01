import 'package:flutter/material.dart';

import '../constants/constant.dart';
class WalletCard extends StatelessWidget {
  const WalletCard({super.key});
  Widget iconButton(IconData icon) {
    return Container(
      width: 65,
      height: 65,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepPurple.shade700.withOpacity(0.8)
      ),
      child: IconButton(
        onPressed: (){},
        icon: Icon(icon,color: Colors.white,size: 40,),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5,top:40),
            padding: const EdgeInsets.only(left: 20,top:30,right: 20),
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlueAccent.shade100.withOpacity(0.6),
                  Colors.pinkAccent.shade100.withOpacity(0.5),
                  Colors.deepPurpleAccent.shade100.withOpacity(0.5),
                  Colors.lightBlueAccent.shade100.withOpacity(0.6)
                ],
                begin: Alignment.topLeft
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wallet,color: mainColor),
                        const Padding(padding: EdgeInsets.only(right: 5)),
                        Text("Main Wallet",style: TextStyle(color: mainColor)),
                        Icon(Icons.arrow_drop_down,color: mainColor),
                      ],
                    ),
                    Icon(Icons.tips_and_updates,color: mainColor,)
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  children: [
                    Icon(Icons.monetization_on_outlined,color: mainColor,),
                    Text("62,588",style: TextStyle(color: mainColor,fontSize: 50)),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top:5)),
                Row(
                  children: [
                    Icon(Icons.arrow_upward,color: mainColor,),
                    Text("8.82%(+970)",style: TextStyle(color: mainColor,fontSize: 15),)
                  ],
                ),
              ],
            )
          ),
          const Padding(padding: EdgeInsets.only(top: 15)),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButton(Icons.arrow_downward_outlined),
                iconButton(Icons.turn_slight_right_outlined),
                iconButton(Icons.code),
                iconButton(Icons.add)
              ],
            ),
          )
        ],
      ),
    );
  }
}
