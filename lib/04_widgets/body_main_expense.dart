import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/04_widgets/list_view_expense.dart';
import 'package:flutter/material.dart';

class BodyMainExpense extends StatelessWidget {
  const BodyMainExpense({super.key, required this.list});
  final List<Expense> list;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Chart'),
        ListViewExpense(listExpense: list),
      ],
    );
  }
}
