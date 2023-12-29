import 'package:expense_tracker/04_widgets/body_main_expense.dart';
import 'package:flutter/material.dart';

class MainExpense extends StatelessWidget {
  const MainExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BodyMainExpense(),
    );
  }
}
