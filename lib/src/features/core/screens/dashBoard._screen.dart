

import 'package:flutter/material.dart';
import 'package:learningflutter/src/respository/authentication-respository/authentication-respository.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoardScreen'),
        actions: [
          IconButton(
            onPressed: () {
              AuthenticationRepository.instance.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text('DashBoardScreen'),
      ),
    );
  }
}