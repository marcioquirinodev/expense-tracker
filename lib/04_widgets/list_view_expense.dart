import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/04_widgets/card_expense.dart';
import 'package:flutter/material.dart';

class ListViewExpense extends StatelessWidget {
  const ListViewExpense(
      {super.key, required this.listExpense, required this.removeExpense});

  final List<Expense> listExpense;
  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listExpense.length,
        itemBuilder: (ctx, index) => Dismissible(
            key: ValueKey(listExpense[index]),
            onDismissed: (direction) {
              removeExpense(listExpense[index]);
            },
            child: CardExpense(expense: listExpense[index])),
      ),
    );
  }
}
