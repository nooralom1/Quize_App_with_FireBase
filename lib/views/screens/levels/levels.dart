import 'package:flutter/material.dart';

class LevelsPage extends StatefulWidget {
  const LevelsPage({super.key});

  @override
  State<LevelsPage> createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
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
                    children: [
                      Text(
                        "Levels",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Choose level!",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 20)),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color(0xff5d85d5),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.white70,
                            size: 28,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListView.builder(
                    itemCount: 24,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 200,
                        child: Card(
                          color: const Color(0xff2e5cb8),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Level ${index + 1}",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    const Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                      size: 35,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "0%",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "0/40",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white38),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
