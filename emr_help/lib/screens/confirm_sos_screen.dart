import 'package:flutter/material.dart';


class ConfirmSOSScreen extends StatelessWidget {
final String type;
const ConfirmSOSScreen({super.key, required this.type});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Confirm SOS')),
body: Center(
child: ElevatedButton(
onPressed: () => Navigator.pop(context),
child: Text('Send $type SOS'),
),
),
);
}
}