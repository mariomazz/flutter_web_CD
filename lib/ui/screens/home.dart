import 'package:flutter/material.dart';
import '../../core/env/env_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final env = Env();
    return Scaffold(
      appBar: AppBar(title: const Text("Test Project")),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(env.envName, style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
