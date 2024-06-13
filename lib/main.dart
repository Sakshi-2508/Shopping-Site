    import 'package:flutter/material.dart';
    import 'package:flutter/widgets.dart';

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
                  const Row(
                    children: [
                      Icon(Icons.add_shopping_cart_outlined),
                      Text(
                        'Cart',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )
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




          // links
          body: SingleChildScrollView(
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mens',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Womens',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Kids',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Sports',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              // cashback
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
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




              const Text(
                'Deals !!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                      buildCardWithIcon(Icons.access_alarm, 'Alarm1'),
                      buildCardWithIcon(Icons.access_alarm, 'Alarm2'),
                      buildCardWithIcon(Icons.access_alarm, 'Alarm4'),
                      buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                      buildCardWithIcon(Icons.access_alarm, 'Alarm'),
                    ],
                  ),
                ),
              ),
              buildSpecialOffersSection(
                'Special Offers',
                'https://via.placeholder.com/300x150',
                'Alarm',
              ),
              // Column(
              //   children: [

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCard(),
                    buildCard(),
                    buildCard(),
                    buildCard(),
                  ],
                ),
              ),

              buildSpecialOffersSection(
                'Special Offers',
                'https://via.placeholder.com/300x150',
                'Alarm',
              ),

              buildSpecialOffersSection(
                'Special Offers',
                'https://via.placeholder.com/300x150',
                'Alarm',
              ),
              // ],
              // ),
            ]),
          ),
        );
      }
    }

    Widget buildCardWithIcon(IconData icon, String text) {
      return SizedBox(
        width: 200,
        child: Container(
          margin: const EdgeInsets.all(10),
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
        ),
      );
    }

    Widget buildSpecialOffersSection(String title, String imagePath, String text) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildSpecialOfferCard('assets/images/SO.jpg'),
                  buildSpecialOfferCard('assets/images/SO1'),
                  buildSpecialOfferCard('assets/images/SO2.jpg'),
                  buildSpecialOfferCard('assets/images/SO3.jpg'),
                  buildSpecialOfferCard('assets/images/SO4.jpg'),
                  buildSpecialOfferCard('assets/images/SO5.jpg'),
                  buildSpecialOfferCard('assets/images/SO6.jpg'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buildSpecialOfferCard(String imagePath) {
      return Container(
        margin: const EdgeInsets.all(10),
        child: Card(
          shadowColor: Colors.purpleAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  imagePath,
                  width: 300,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildImage(String path) {
      return Image.asset(
        path,
        height: 120,
        width: 150,
      );
    }

    Widget buildCard() {
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Margin around the card
        child: Card(
          color: Colors.white,
          elevation: 5.0, // Shadow effect
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(5), // Padding inside the card
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to the start
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Home Decor At 50% Off',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16.0), // Space between elements
                Row(
                  children: [
                    buildImage('assets/images/decor.jpg'),
                    const SizedBox(width: 5), // Space between images
                    buildImage('assets/images/decor1.jpg'),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    buildImage('assets/images/decor3.jpg'),
                    const SizedBox(width: 8.0),
                    buildImage('assets/images/decor4.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
