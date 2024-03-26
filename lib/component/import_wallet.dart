import 'package:flutter/material.dart';
import 'package:flutter_project01/constants/constant.dart';
import 'package:flutter_project01/page/home_page.dart';
import 'package:get/get.dart';
class ImportWallet extends StatelessWidget {
  const ImportWallet({super.key});

  Widget myButton(String text,Color textColor,Color buttonColor){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        onPressed: (){},
        child: Text(text,style: TextStyle(color: textColor),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImportWallet",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: mainColor.withOpacity(0.8),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors:[
                      Colors.yellow.withOpacity(0.5),
                      Colors.purpleAccent.withOpacity(0.3),
                      Colors.orange.withOpacity(0.3),
                      Colors.redAccent.withOpacity(0.5)
                    ],
                  begin: Alignment.topLeft
                ),
              ),
              child: Text("Wallet name",style: TextStyle(fontSize: 30,color: Colors.grey.withOpacity(0.7)),),
            ),
            const
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myButton("Phase",Colors.white,mainColor),
                myButton("Address",mainColor,Colors.white70.withOpacity(0.8)),
                myButton("Private Key",mainColor,Colors.white70.withOpacity(0.8))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: 400,
              height: 150,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 2
                )
              ),
              child: Column(
                children: [
                  const TextField(
                    style:TextStyle(
                      overflow: TextOverflow.clip
                    ),
                    decoration: InputDecoration(
                      hintText: "Secret phrase(12 or 24 words)",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      )
                    ),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.info_outline,color: Colors.grey,)),
                      const Padding(padding: EdgeInsets.only(right: 190)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_rounded,color:Colors.black)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.copy,color: Colors.black,))
                    ],
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10),),
            Container(
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 2
                )
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    radius: 23,
                    child: Icon(Icons.shopping_cart_outlined,color: mainColor,),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 15)),
                  Text("Merchant wallet",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold)),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  const Icon(Icons.info_outline,color: Colors.grey,)
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            ElevatedButton(
                onPressed: (){
                  Get.off(const HomePage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  minimumSize: Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: const Text(
                  "Import",style:
                TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                        value: true,
                        onChanged: (e){},
                    ),
                  ),
                  const SizedBox(
                    width: 300,
                    height: 30,
                    child: Text(
                      "I have read and accept the Terms of Service and Privacy Policy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
