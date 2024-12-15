import "package:flutter_bloc/flutter_bloc.dart";

// Import repo
import "package:chinmay_expenses_app/features/entry/repo/add_expenses_repo.dart";

// Import model
import "package:chinmay_expenses_app/features/entry/models/add_expenses_model.dart";

// Import events and states
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_event.dart";
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_state.dart";

class AddExpensesBloc extends Bloc<AddExpensesEvent, AddExpensesState> {
  final AddExpensesRepository addExpensesRepository = AddExpensesRepository();

  AddExpensesBloc() : super(AddExpensesInitial()) {
    on<AddExpense>((event, emit) async {
      emit(AddExpensesLoading());

      try {
        final expenses = await addExpensesRepository.addExpenses(date: event.date, expenses: event.expenses);
        emit(AddExpensesSuccess(expenses: expenses));
      }
      catch (error) {
        emit(AddExpensesError(error: AddExpenses(error: error)));
      }
    });
  }
}