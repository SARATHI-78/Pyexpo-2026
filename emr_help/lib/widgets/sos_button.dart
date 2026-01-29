import 'package:flutter/material.dart';
import '../services/sos_service.dart';


class SOSButton extends StatelessWidget {
final String type;
const SOSButton({super.key, required this.type});


@override
Widget build(BuildContext context) {
return ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.red,
minimumSize: const Size(220, 60),
),
onPressed: () async {
await SOSService.triggerSOS(type);
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('$type SOS Sent')),
);
},
child: Text('$type SOS', style: const TextStyle(color: Colors.white)),
);
}
}