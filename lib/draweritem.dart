import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.name, required this.icon, required this.onPressed}) : super(key: key);
  final String name;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 20,color: Color(0xFF515050),),
            const SizedBox(width: 40,),
            Text(name,style: const TextStyle(fontSize: 15,color: Color(0xFF515050)),)
          ],
        ),
      ),
    );
  }
}
