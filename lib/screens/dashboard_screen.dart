import 'package:flutter/material.dart';
import 'arithmetic_screen.dart';
import 'area_of_circle_screen.dart';
import 'simple_interest_screen.dart';
import 'palindrome_number_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ArithmeticScreen()),
              );
            },
            child: const Text('Arithmetic', style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AreaOfCircleScreen()),
              );
            },
            child: const Text('Area of Circle', style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SimpleInterestScreen()),
              );
            },
            child: const Text('Simple Interest', style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PalindromeNumberScreen()),
              );
            },
            child: const Text('Palindrome Number', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
