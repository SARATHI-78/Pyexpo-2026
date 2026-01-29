import 'package:flutter/material.dart';
import '../widgets/sos_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EMR Help"),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SOSButton(type: "Medical"),
            SizedBox(height: 20),
            SOSButton(type: "Fire"),
            SizedBox(height: 20),
            SOSButton(type: "Police"),
          ],
        ),
      ),
    );
  }
}
