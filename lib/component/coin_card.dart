import 'package:flutter/material.dart';
import 'package:flutter_project01/constants/constant.dart';
class CoinCard extends StatelessWidget {
  const CoinCard({super.key});

  Widget getInformationCard(
      IconData coinType,
      String coinName,
      String coinNum,
      String coinTotal,
      IconData tendencyIcon,
      String tendencyRate,
      String tendencyNum,
      ){
    return Container(
      padding: const EdgeInsets.only(top: 10,left: 10),
      width: 165,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.shade100,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(coinType,size: 35,),
              ),
              const Padding(padding: EdgeInsets.only(right: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coinName,style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 15),),
                  Text(coinNum,style: const TextStyle(color: Colors.grey,)),
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(coinTotal,style: TextStyle(color: mainColor,fontSize: 30,fontWeight: FontWeight.bold),),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(tendencyIcon,color: mainColor,),
              const Padding(padding: EdgeInsets.only(right: 5)),
              Text(tendencyRate,style: TextStyle(color: mainColor,fontWeight: FontWeight.bold)),
              const Padding(padding: EdgeInsets.only(right: 5)),
              Text(tendencyNum,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30,top: 10,right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Assets",style: TextStyle(color: mainColor,fontSize: 20),),
              const Padding(padding: EdgeInsets.only(right: 10)),
              const Text("NFTs",style: TextStyle(color: Colors.grey,fontSize: 20),),
              const Padding(padding: EdgeInsets.only(right: 120)),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.grid_view_rounded,color: Colors.grey.shade800,),
              ),
              const Padding(padding: EdgeInsets.only(right: 3)),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.grid_view_rounded,color: Colors.grey.shade800,),
              ),
            ],
          ),
          Row(
            children: [
              getInformationCard(
                  Icons.currency_bitcoin,
                  "Ethereum", "1.5ETH",
                  "1.740",
                  Icons.arrow_circle_up,
                  "0.82%", "(+274)"
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              getInformationCard(Icons.monetization_on_outlined,
                  "Binance",
                  "73.5 BNB",
                  "632",
                  Icons.arrow_circle_down_rounded,
                  "7.53%",
                  "(-51)"
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            width: 350,
            height: 100,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blueAccent.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Learn how to trade",
                  style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Text(
                  "More info here",
                  style: TextStyle(color: mainColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
