import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/settings/widgets/listtile.dart';

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
      backgroundColor: Color(0xff4775d1),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                  backgroundColor: Color(0xff5d85d5),
                  radius: 23,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Settings",
                  style: TextStyle(color: Colors.white70, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 120,
              width: 365,
              decoration: BoxDecoration(
                  color: Color(0xff5d85d5),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "MyQuizz",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Game",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ListTileWidget(
              leading: Icons.auto_graph,
              tittle: 'Statistics',
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Media",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
           SwitchListTile(
             secondary: Icon(Icons.notifications_none,color: Colors.white70,size: 35,),
             tileColor: Color(0xff5d85d5),
             title: Text("Notification",style: TextStyle(color: Colors.white70,fontSize: 20),),
               value: lights, onChanged: (bool value){
             setState(() {
               lights = value;
             });
           }),
           SwitchListTile(
             secondary: Icon(Icons.volume_up_outlined,color: Colors.white70,size: 35,),
             tileColor: Color(0xff5d85d5),
             title: Text("Sound",style: TextStyle(color: Colors.white70,fontSize: 20),),
               value: lights, onChanged: (bool value){
             setState(() {
               lights = value;
             });
           }),
            ListTileWidget(leading: Icons.ac_unit_outlined, tittle: 'English')
          ],
        ),
      ),
    );
  }
}
