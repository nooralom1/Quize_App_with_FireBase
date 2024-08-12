import 'package:flutter/material.dart';

class GuessTheLogoPage extends StatefulWidget {
  const GuessTheLogoPage({super.key});

  @override
  State<GuessTheLogoPage> createState() => _GuessTheLogoPageState();
}

class _GuessTheLogoPageState extends State<GuessTheLogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CircleAvatar(
                            backgroundColor: Color(0xff5d85d5),
                            radius: 23,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Guess the logo",
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Lv. 1",
                                style:
                                    TextStyle(color: Colors.white70, fontSize: 20)),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: const Color(0xff5d85d5),
                              borderRadius: BorderRadius.circular(40)),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.square_sharp,
                                  size: 5,
                                  color: Colors.white,
                                ),
                                Text(
                                  "44",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                Icon(
                                  Icons.light_mode_outlined,
                                  color: Colors.white70,
                                  size: 28,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: Card(
                      color: Colors.white,
                      child: Center(
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 42,
                            child: Card(
                              color: Color(0xff6f94dc),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: Card(
                      color: Color(0xff2851a4),
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 106,
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(0xff6f94dc),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
