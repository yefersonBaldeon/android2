import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 100;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    TextStyle fontSize40 = const TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,  // default
          children: [
            Text(
              'INGENIERIA DE SISTEMAS',
              style: fontSize30.copyWith(
                  color: Colors.blue), // Cambia esto al color que prefieras
            ),
            Text('Account of clicks', style: fontSize30),
            Text('$count', style: fontSize30),
            Image.network(
                'https://i0.wp.com/sistemasuncp.edu.pe/wp-content/uploads/2023/07/Logo-fis-300x300-1.png?resize=300%2C300&ssl=1'),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              count++;
              setState(() {});
            },
          ),
          const SizedBox(width: 10), // Espacio entre los botones
          FloatingActionButton(
            child: const Icon(Icons.add_alarm),
            onPressed: () {
              count = 0;
              setState(() {});
            },
          ),

          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              count--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
