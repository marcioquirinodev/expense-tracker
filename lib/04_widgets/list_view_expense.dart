import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/04_widgets/card_expense.dart';
import 'package:flutter/material.dart';

class ListViewExpense extends StatelessWidget {
  const ListViewExpense({super.key, required this.listExpense});

  final List<Expense> listExpense;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listExpense.length,
        itemBuilder: (context, index) =>
            CardExpense(expense: listExpense[index]),
      ),
    );
  }
}
