import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/settings/widgets/listtile.dart';
import 'package:quize_app/views/screens/statistics/statistics.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool lights = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4775d1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
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
                  "Settings",
                  style: TextStyle(color: Colors.white70, fontSize: 25),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 365,
              decoration: BoxDecoration(
                  color: const Color(0xff5d85d5),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  "MyQuizz",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StatisticsPage()));
              },
              child: const ListTileWidget(
                leading: Icons.auto_graph,
                tittle: 'Statistics',
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
                    "Media",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SwitchListTile(
                secondary: const Icon(
                  Icons.notifications_none,
                  color: Colors.white70,
                  size: 25,
                ),
                tileColor: const Color(0xff5d85d5),
                title: const Text(
                  "Notification",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                value: lights,
                onChanged: (bool value) {
                  setState(() {
                    lights = value;
                  });
                }),
            SwitchListTile(
                secondary: const Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white70,
                  size: 25,
                ),
                tileColor: const Color(0xff5d85d5),
                title: const Text(
                  "Sound",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                value: lights,
                onChanged: (bool value) {
                  setState(() {
                    lights = value;
                  });
                }),
            const ListTileWidget(
                leading: Icons.ac_unit_outlined, tittle: 'English'),
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
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            const ListTileWidget(leading: Icons.share, tittle: 'Share app'),
            const ListTileWidget(
                leading: Icons.star_border, tittle: 'Rate app'),
            const ListTileWidget(
                leading: Icons.file_upload_outlined, tittle: 'Upload'),
            const ListTileWidget(
                leading: Icons.message_rounded, tittle: 'Contact us'),
            const ListTileWidget(leading: Icons.lock, tittle: 'Privacy'),
          ],
        ),
      ),
    );
  }
}
