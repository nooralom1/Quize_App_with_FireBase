import 'package:flutter/material.dart';
import 'package:quize_app/models/all_models.dart';

class GuessTheLogoPage extends StatefulWidget {
  const GuessTheLogoPage({super.key});

  @override
  State<GuessTheLogoPage> createState() => _GuessTheLogoPageState();
}

class _GuessTheLogoPageState extends State<GuessTheLogoPage> {
  List<String> getData = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  List<bool> isCheck = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Lv. 1",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 20)),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 50),
                    child: SizedBox(
                      height: 200,
                      width: 300,
                      child: Card(
                        color: Colors.white,
                        child: Center(
                          child: Image.asset("assets/images/logo.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 350,
                    ),
                    child: SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 47.2,
                              child: Card(
                                color: const Color(0xff6f94dc),
                                child: Center(
                                  child: Text(getData[index],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 27)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 400, left: 170),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 577),
                    child: Container(
                      height: 250,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Color(0xff6f94dc),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 535, left: 40),
                    child: SizedBox(
                      height: 100,
                      width: 320,
                      child: Visibility(
                        visible: true,
                        child: Card(
                          color: Colors.white,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Card(
                                    color: Color(0xff2851a4),
                                    child: Center(
                                        child: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                      size: 35,
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Card(
                                    color: Color(0xff2851a4),
                                    child: Center(
                                        child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 35,
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Card(
                                    color: Color(0xff2851a4),
                                    child: Center(
                                        child: Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 35,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 660),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 8,
                        childAspectRatio: 0.9,
                      ),
                      itemCount: letter.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            String data = letter[index].letter;
                            setState(() {
                              isCheck[index] = false;
                              for (int i = 0; i < getData.length; i++) {
                                if (getData[i].isEmpty) {
                                  getData[i] = data;
                                  return;
                                }
                              }
                            });
                          },
                          child: Visibility(
                            visible: isCheck[index],
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  letter[index].letter,
                                  style: const TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
