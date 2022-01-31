import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sweet/provider.dart';

class JSweets extends ConsumerStatefulWidget {
  const JSweets({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _JSweetsState();
}

class _JSweetsState extends ConsumerState<JSweets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(JSweetProvider)),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => ref.watch(countProvider1.state).state++,
          child: Card(
            child: Column(
              children: [
                Image.asset('assets/wagasi.png'),
                Text(ref.read(howManyProvider)),
                Text(ref.watch(countProvider1.state).state.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
