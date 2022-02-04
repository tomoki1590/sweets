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
      body: Center(
        child: Column(
          children: [
            Image.asset(ref.watch(FProvider)),
            Text('飲んだ本数分タップしてください'),
            SizedBox(
              width: 250,
              child: Row(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: RawMaterialButton(
                        constraints: BoxConstraints.tightFor(
                          width: 10,
                        ),
                        onPressed: () {
                          ref.read(countProvider1.state).state++;
                        },
                        child: Text('+')),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.5),
                      child: Text(
                          ref.watch(countProvider1.state).state.toString()),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: RawMaterialButton(
                        constraints: const BoxConstraints.tightFor(
                          width: 10,
                        ),
                        onPressed: () {
                          ref.read(countProvider1.state).state--;
                        },
                        child: Text('-'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
