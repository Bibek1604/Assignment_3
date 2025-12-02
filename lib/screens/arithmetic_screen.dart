import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final n1 = TextEditingController();
  final n2 = TextEditingController();

  void showResult(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: n1, label: 'Enter first number'),
            CustomTextField(controller: n2, label: 'Enter second number'),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                double num1 = double.tryParse(n1.text) ?? 0;
                double num2 = double.tryParse(n2.text) ?? 0;
                showResult('Sum: ${num1 + num2}');
              },
              child: const Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
}
