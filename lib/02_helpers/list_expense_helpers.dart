import 'package:expense_tracker/01-models/expense.dart';
import 'package:expense_tracker/03_enums/category_type.dart';

List<Expense> listExpenseHelpers = [
  Expense(
    title: 'Aquisição de Servidor',
    amount: 2850.00,
    category: CategoryType.work,
    date: DateTime(2023, 11, 20),
  ),
  Expense(
    title: 'Ponte Aérea Rio x São Paulo',
    amount: 243.00,
    category: CategoryType.travel,
    date: DateTime(2023, 10, 2),
  ),
  Expense(
    title: 'Almoço no Mandíbula',
    amount: 62.80,
    category: CategoryType.food,
    date: DateTime(2023, 11, 15),
  ),
  Expense(
    title: 'Presente para Manuella',
    amount: 750.00,
    category: CategoryType.leisure,
    date: DateTime(2023, 11, 03),
  ),
];
