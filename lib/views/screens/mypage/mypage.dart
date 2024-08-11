import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/settings/settings.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/backk.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 150,),
              const SizedBox(
                height: 80,
                width: 230,
                child: Card(
                  color: Color(0xff4775d1),
                  child: Center(
                      child: Text(
                    "Play",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Card(
                          color: Color(0xff4775d1),
                          child: Center(
                              child: Icon(Icons.share_rounded,color: Colors.white,size: 40,)),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Share"),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage()));
                          },
                          child: const Card(
                            color: Color(0xff4775d1),
                            child: Center(
                                child: Icon(Icons.settings,color: Colors.white,size: 40,)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text("Settings"),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
