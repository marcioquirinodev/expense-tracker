import 'package:expense_tracker/04_widgets/list_view_expense.dart';
import 'package:flutter/material.dart';

class BodyMainExpense extends StatefulWidget {
  const BodyMainExpense({super.key});

  @override
  State<BodyMainExpense> createState() => _BodyMainExpenseState();
}

class _BodyMainExpenseState extends State<BodyMainExpense> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Chart'),
        ListViewExpense(),
      ],
    );
  }
}
