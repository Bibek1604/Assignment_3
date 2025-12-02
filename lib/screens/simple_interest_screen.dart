import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final principalController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();

  void calculateSI() {
    final p = double.tryParse(principalController.text);
    final r = double.tryParse(rateController.text);
    final t = double.tryParse(timeController.text);

    if (p == null || r == null || t == null) return;

    final si = (p * r * t) / 100;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Simple Interest: ${si.toStringAsFixed(2)}'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: principalController, label: 'Principal'),
            CustomTextField(controller: rateController, label: 'Rate (%)'),
            CustomTextField(controller: timeController, label: 'Time (years)'),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: calculateSI,
              child: const Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
