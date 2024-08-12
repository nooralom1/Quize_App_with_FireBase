
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData leading;
  final String tittle;
  final String trailing;
  const CustomListTile({
    super.key, required this.leading, required this.tittle, required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xff5d85d5),
      leading: Icon(
        leading,
        size: 25,
        color: Colors.white70,
      ),
      title: Text(
        tittle,
        style: const TextStyle(color: Colors.white70, fontSize: 20),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(color: Colors.white70, fontSize: 20),
      ),
    );
  }
}
