import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* final countModel = Provider.of<CounterModel>(context);
      khi không muốn data trong model thay đổi UI ta sử dụng Provider.of
    */
    final countModel = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Provider Demo"),
        ),
      ),
      body: Center(
        child: Text('Count value is: ${countModel.getCount()}',
        style: const TextStyle(color: Colors.red, fontSize: 25.0)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon (Icons.add),
              tooltip: "Increment",
              onPressed: () => countModel.incrementCounter(),
          ),
          const SizedBox(
            width: 35,
          ),
          FloatingActionButton(
            child: const Icon (Icons.remove),
            tooltip: "Increment",
            onPressed: () => countModel.decrementCounter(),
          ),
        ],
      ),
    );
  }
}























