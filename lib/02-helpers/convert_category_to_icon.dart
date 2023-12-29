import 'package:expense_tracker/03_enums/category_type.dart';
import 'package:flutter/material.dart';

Map<CategoryType, IconData> convertCategoryToIcon = {
  CategoryType.food: Icons.lunch_dining,
  CategoryType.leisure: Icons.cake,
  CategoryType.travel: Icons.airplanemode_on_rounded,
  CategoryType.work: Icons.work_outlined,
};
