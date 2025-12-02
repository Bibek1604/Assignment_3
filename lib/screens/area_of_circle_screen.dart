import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'dart:math';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final radiusController = TextEditingController();

  void calculateArea() {
    final radiusText = radiusController.text;
    if (radiusText.isEmpty) return;

    final radius = double.tryParse(radiusText);
    if (radius == null) return;

    final area = pi * radius * radius;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Area of Circle: ${area.toStringAsFixed(2)}'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: radiusController, label: 'Radius'),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: calculateArea,
              child: const Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
