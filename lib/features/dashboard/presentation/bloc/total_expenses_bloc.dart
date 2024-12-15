import 'package:flutter_bloc/flutter_bloc.dart';

// Import Repo
import "package:chinmay_expenses_app/features/dashboard/repo/current_month_total_expenses_repo.dart";

// Import model
import "package:chinmay_expenses_app/features/dashboard/models/total_expenses_model.dart";

// Import events and states
import "total_expenses_event.dart";
import "total_expenses_state.dart";

class TotalExpensesBloc extends Bloc<TotalExpensesEvent, TotalExpensesState> {
  final CurrentMonthTotalExpensesRepository currentMonthTotalExpensesRepository = CurrentMonthTotalExpensesRepository();

  TotalExpensesBloc() : super(TotalExpensesInitial()) {
    on<FetchTotalExpenses>((event, emit) async {
      emit(TotalExpensesLoading());

      try {
        TotalExpenses totalExpenses = await currentMonthTotalExpensesRepository.currentMonthTotalExpenses();
        emit(TotalExpensesLoaded(expenses: totalExpenses));
      } catch (error) {
        emit(TotalExpensesError(error: TotalExpenses(error: error)));
      }
    });
  }
}