// import 'package:flutter/material.dart';

// class CounterButtons extends StatelessWidget {
//   final VoidCallback onIncrement;
//   final VoidCallback onDecrement;

//   const CounterButtons({super.key, required this.onIncrement, required this.onDecrement});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         IconButton(onPressed: onDecrement, icon: Icon(Icons.remove)),
//         SizedBox(width: 16),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterProvider>();

    return Row(
      children: [
        IconButton(
          onPressed: counter.increment,
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: counter.decrement,
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
