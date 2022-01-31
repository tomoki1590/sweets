import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sweet/provider.dart';

import 'japanese_sweets.dart';
import 'juice.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('甘党アプリ'),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            child: GestureDetector(
              child: Column(
                children: [
                  SizedBox(
                      height: 140,
                      width: 200,
                      child: Image.asset("assets/drink.png")),
                  Text(ref.watch(juiceProvider)),
                  Text(ref.watch(countProvider1.state).state.toString())
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Juice()));
              },
            ),
          ),
          Card(
            child: GestureDetector(
              child: Column(
                children: [
                  Image.network(
                      'https://www.kaigo-antenna.jp/uploads/illustration/main_image/373/s_00320.jpg'),
                  Text(ref.watch(JSweetProvider)),
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JSweets()));
              },
            ),
          ),
          Card(
            child: GestureDetector(
              child: Column(
                children: [
                  Image.network(
                      'https://gotsu-kanko.jp/wp-content/uploads/kagura03.jpg')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Juice()));
              },
            ),
          ),
          Card(
            child: GestureDetector(
              child: Column(
                children: [
                  Image.network(
                      'https://gotsu-kanko.jp/wp-content/uploads/kagura03.jpg')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Juice()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
