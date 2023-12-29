import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/02_helpers/list_expense_helpers.dart';
import 'package:expense_tracker/04_widgets/card_expense.dart';
import 'package:flutter/material.dart';

class ListViewExpense extends StatelessWidget {
  ListViewExpense({super.key});

  final List<Expense> listExpense = listExpenseHelpers;

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
