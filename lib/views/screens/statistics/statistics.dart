import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/levels/levels.dart';
import 'package:quize_app/views/screens/logos/logos.dart';
import 'package:quize_app/views/screens/statistics/widgets/custom_listtile.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
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
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Statistics",
                  style: TextStyle(color: Colors.white70, fontSize: 25),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Game",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogosPage()));
              },
              child: CustomListTile(
                leading: Icons.star_border,
                tittle: 'Logos',
                trailing: '0',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Levels",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelsPage()));
              },
              child: CustomListTile(
                leading: Icons.lock_outline_sharp,
                tittle: 'Levels',
                trailing: '26',
              ),
            ),
            CustomListTile(
              leading: Icons.play_arrow,
              tittle: 'Unlocked levels',
              trailing: '0',
            ),
            CustomListTile(
              leading: Icons.check_circle_outline,
              tittle: 'Full complete',
              trailing: '0',
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Hints",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            CustomListTile(
              leading: Icons.light_mode_rounded,
              tittle: 'Unused hints',
              trailing: '37',
            ),
            CustomListTile(
              leading: Icons.light_mode_outlined,
              tittle: 'Used hints',
              trailing: '13',
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Other",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            CustomListTile(
              leading: Icons.calendar_month_sharp,
              tittle: 'First run',
              trailing: '07-08-2024',
            ),
            CustomListTile(
              leading: Icons.access_time_rounded,
              tittle: 'App since',
              trailing: '4 Days',
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
