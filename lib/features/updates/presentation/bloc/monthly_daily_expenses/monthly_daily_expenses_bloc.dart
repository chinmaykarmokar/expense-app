import 'package:flutter_bloc/flutter_bloc.dart';

// Import Repo
import "package:chinmay_expenses_app/features/updates/repo/current_month_daily_expenses_repo.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/monthly_daily_expenses_model.dart";

// Import events and states
import "package:chinmay_expenses_app/features/updates/presentation/bloc/monthly_daily_expenses/monthly_daily_expenses_event.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/monthly_daily_expenses/monthly_daily_expenses_state.dart";

class MonthlyDailyExpensesBloc extends Bloc<MonthlyDailyExpensesEvent, MonthlyDailyExpensesState> {
  final CurrentMonthDailyExpensesRepository currentMonthDailyExpensesRepository = CurrentMonthDailyExpensesRepository();

  MonthlyDailyExpensesBloc() : super(MonthlyDailyExpensesInitial()) {
    on<FetchMonthlyDailyExpenses>((event, emit) async {
      emit(MonthlyDailyExpensesLoading());

      try {
        final totalExpenses = await currentMonthDailyExpensesRepository.currentMonthDailyExpenses();
        emit(MonthlyDailyExpensesLoaded(expenses: totalExpenses));
      } catch (error) {
        emit(MonthlyDailyExpensesError(error: MonthlyDailyExpenses(error: error)));
      }
    });
  }
}