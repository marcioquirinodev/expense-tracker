import 'package:expense_tracker/03_enums/category_type.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  }) : id = const Uuid().v4();

  final String id;
  final String title;
  final double amount;
  final CategoryType category;
  final DateTime date;

  String get formattedDate => DateFormat.yMd().format(date);
}
