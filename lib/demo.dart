import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Website',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'E-Commerce Website'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Search...',
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'Cart',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        toolbarHeight: 80,
        leading: const Center(
          child: Text(
            'E-Commerce',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black87,
            ),
          ),
        ),
        leadingWidth: 150,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.purpleAccent,
                  width: 2.0,
                ),
              ),
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    text: "A Summer Surprise\n",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'CashBack 35%',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                buildCardWithIcon(Icons.not_accessible_outlined, 'Alarm'),
                buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                buildCardWithIcon(Icons.access_alarm, 'Alarm'),
              ],
            ),
            buildSpecialOffersSection(
              'Special Offers',
              'https://via.placeholder.com/300x150',
              'Alarm',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardWithIcon(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Card(
        shadowColor: Colors.grey,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 70,
                color: Colors.pinkAccent,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSpecialOffersSection(
      String title, String imagePath, String text) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildSpecialOfferCard('assets/images/Headphone.jpg'),
              buildSpecialOfferCard('assets/images/cook.jpg'),
              buildSpecialOfferCard('assets/images/jog1.jpg'),
              buildSpecialOfferCard('assets/images/Headphone.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSpecialOfferCard(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Card(
        shadowColor: Colors.purpleAccent,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: 300,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
