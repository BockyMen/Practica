import 'package:flutter/material.dart';
import './widgets/CustomCart.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

  appBar: AppBar(
    title: Text("Pagina principal", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    centerTitle: true, 
    leading: IconButton(
    icon: Icon(Icons.menu), 
    onPressed: () {},
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.notifications_on_outlined), 
      onPressed: () {},
    ),
  ],
),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
          
          const Text("Información personal", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal)
          ),

const Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Icon(
      Icons.do_disturb_on_outlined,
      color: Color.fromARGB(255, 104, 104, 104),
      size: 30.0,
      //semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.ac_unit_outlined,
      color: Color.fromARGB(255, 104, 104, 104),
      size: 30.0,
    ),
    Icon(
      Icons.paid_outlined,
      color: Color.fromARGB(255, 104, 104, 104),
      size: 30.0,
    ),
    Icon(
      Icons.panorama_fisheye_rounded,
      color: Color.fromARGB(255, 104, 104, 104),
      size: 30.0,
    ),
    Icon(
      Icons.pie_chart_sharp,
      color: Color.fromARGB(255, 104, 104, 104),
      size: 30.0,
    ),
  ],
),
    Image(
          image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
                ),
    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15), textAlign: TextAlign.center,),

                CustomCard(
                  title: "Card 1", 
                  subtitle: "Subtitle 1", 
                  icon: Icons.access_alarm,
                  icon2: Icons.access_alarm,
                ),
                CustomCard(
                  title: "Card 2", 
                  subtitle: "Subtitle 2", 
                  icon: Icons.account_balance,
                  icon2: Icons.account_balance,
                ),
              ],
      ),
      
    ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label:''),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label:''),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:''),
          ],
        ),
      ),
    );
  }
}
