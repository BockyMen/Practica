import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final IconData icon2;
  // final VoidCallback onTap;


const CustomCard({
  super.key,
  required this.title,
  required this.subtitle, 
  required this.icon,
  required this.icon2
  // required this.onTap,
});

@override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, size:32), Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
          Icon(icon2, size:32)
        ],
      ),
      /*
     children: ListTile(
      leading: Icon(icon, size: 32), 
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),

      //trailing: const Icon(Icons.arrow_forward_ios),
     ),
     */

   );
  }
}