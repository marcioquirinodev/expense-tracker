import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/02_helpers/list_expense_helpers.dart';
import 'package:expense_tracker/04_widgets/body_main_expense.dart';
import 'package:expense_tracker/04_widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainExpense extends StatefulWidget {
  const MainExpense({super.key});

  @override
  State<MainExpense> createState() => _MainExpenseState();
}

class _MainExpenseState extends State<MainExpense> {
  final List<Expense> listExpense = listExpenseHelpers;

  void addNewExpense(Expense expense) {
    setState(() {
      listExpense.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    void onShowModal() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(addNewExpense: addNewExpense),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: onShowModal,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BodyMainExpense(list: listExpense),
    );
  }
}
