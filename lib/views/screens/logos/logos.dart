
import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/guess_thr_logo/guess_the_logo.dart';

class LogosPage extends StatefulWidget {
  const LogosPage({super.key});

  @override
  State<LogosPage> createState() => _LogosPageState();
}

class _LogosPageState extends State<LogosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: Column(
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
                        "Logos",
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
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xff5d85d5),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0/40",
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: GridView.builder(
                  itemCount: 40,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GuessTheLogoPage()));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
