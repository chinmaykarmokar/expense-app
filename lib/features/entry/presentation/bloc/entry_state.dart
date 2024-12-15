// Import model
import "package:chinmay_expenses_app/features/entry/models/add_expenses_model.dart";

abstract class AddExpensesState {}

class AddExpensesInitial extends AddExpensesState {}

class AddExpensesLoading extends AddExpensesState {}

class AddExpensesSuccess extends AddExpensesState {
  final AddExpenses expenses;
  AddExpensesSuccess({ required this.expenses });
}

class AddExpensesError extends AddExpensesState {
  final AddExpenses error;
  AddExpensesError({ required this.error });
}