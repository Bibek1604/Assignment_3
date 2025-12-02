import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class PalindromeNumberScreen extends StatefulWidget {
  const PalindromeNumberScreen({super.key});

  @override
  State<PalindromeNumberScreen> createState() => _PalindromeNumberScreenState();
}

class _PalindromeNumberScreenState extends State<PalindromeNumberScreen> {
  final numberController = TextEditingController();

  void checkPalindrome() {
    final text = numberController.text;
    if (text.isEmpty) return;

    final reversed = text.split('').reversed.join('');
    final isPalindrome = text == reversed;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isPalindrome ? 'It is a palindrome!' : 'Not a palindrome.',
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: numberController, label: 'Enter number'),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: checkPalindrome,
              child: const Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}
