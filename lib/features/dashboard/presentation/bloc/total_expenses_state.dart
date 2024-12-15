// Import model
import "package:chinmay_expenses_app/features/dashboard/models/total_expenses_model.dart";

abstract class TotalExpensesState {}

class TotalExpensesInitial extends TotalExpensesState {}

class TotalExpensesLoading extends TotalExpensesState {}

class TotalExpensesLoaded extends TotalExpensesState {
  final TotalExpenses expenses;
  TotalExpensesLoaded({required this.expenses});
}

class TotalExpensesError extends TotalExpensesState {
  final TotalExpenses error;
  TotalExpensesError({required this.error});
}