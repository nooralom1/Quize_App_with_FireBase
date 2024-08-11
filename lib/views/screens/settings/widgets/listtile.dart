
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final IconData leading;
  final String tittle;
  final IconData? trailing;
  final Function? onTap;
  const ListTileWidget({
    super.key, required this.leading, required this.tittle, this.trailing, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){onTap;},
      leading: Icon(leading,color: Colors.white70,size: 25,),
      title: Text(
        tittle,
        style: const TextStyle(
            color: Colors.white70,fontSize: 20
        ),
      ),
      trailing: Icon(trailing),
      tileColor:  const Color(0xff5d85d5),
    );
  }
}