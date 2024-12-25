import "package:flutter_bloc/flutter_bloc.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/daily_expenses_model.dart";

// Import event and state
import "package:chinmay_expenses_app/features/updates/presentation/bloc/daily_expenses/daily_expenses_event.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/daily_expenses/daily_expenses_state.dart";

// Import repo
import "package:chinmay_expenses_app/features/updates/repo/daily_expenses_repo.dart";

class DailyExpensesBloc extends Bloc<DailyExpensesEvent, DailyExpensesState> {
  final DailyExpensesRepository dailyExpensesRepository = DailyExpensesRepository();

  DailyExpensesBloc() : super(DailyExpensesInitial()) {
    on<FetchDailyExpenses>((event, emit) async {
      emit(DailyExpensesLoading());

      try {
        final dailyExpenses = await dailyExpensesRepository.dailyExpenses(date: event.date);
        emit(DailyExpensesLoaded(expenses: dailyExpenses));
      }
      catch (error) {
        emit(DailyExpensesError(
          error: DailyExpenses(error: error)
        ));
      }
    });
  }
}