import 'package:expense_tracker/01_models/expense.dart';
import 'package:expense_tracker/02_helpers/convert_category_to_icon.dart';
import 'package:flutter/material.dart';

class CardContentExpense extends StatelessWidget {
  const CardContentExpense({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  expense.amount.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Icon(
                  convertCategoryToIcon[expense.category],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  expense.formattedDate,
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
