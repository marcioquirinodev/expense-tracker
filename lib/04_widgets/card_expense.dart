import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/04_widgets/card_content_expense.dart';
import 'package:flutter/material.dart';

class CardExpense extends StatelessWidget {
  const CardExpense({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CardContentExpense(expense: expense),
    );
  }
}
