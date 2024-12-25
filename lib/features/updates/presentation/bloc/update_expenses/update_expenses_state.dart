// Import model
import "package:chinmay_expenses_app/features/updates/models/update_expenses_model.dart";

abstract class UpdateExpensesState {}

class UpdateExpensesInitial extends UpdateExpensesState {}

class UpdateExpensesLoading extends UpdateExpensesState {}

class UpdateExpensesSuccess extends UpdateExpensesState {
  final UpdateExpenses message;
  UpdateExpensesSuccess({ required this.message });
}

class UpdateExpensesError extends UpdateExpensesState {
  final UpdateExpenses error;
  UpdateExpensesError({ required this.error });
}