import 'package:flutter/material.dart';
import 'package:order_food_app/widgets/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Brian,',
                  style: AppWidget.boldTextStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              'Delicious Food',
              style: AppWidget.headerTextStyle(),
            ),
            Text(
              'Discover and get great food in town ',
              style: AppWidget.lightTextStyle(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/pizza.png'),
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/salad.png'),
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/burger.png'),
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/ice-cream.png'),
                  ),
                ),
                const SizedBox(width: 10.0)
              ],
            )
          ],
        ),
      ),
    );
  }
}
