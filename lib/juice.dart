import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sweet/provider.dart';

class Juice extends ConsumerStatefulWidget {
  const Juice({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _JuiceState();
}

class _JuiceState extends ConsumerState<Juice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(juiceProvider)),
      ),
      body: GestureDetector(
        onTap: () {
          ref.read(countProvider1.state).state++;
        },
        child: Card(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 200, child: Image.asset(ref.watch(FProvider))),
                Text('飲んだ本数分タップしてください'),
                Text(ref.watch(countProvider1.state).state.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
