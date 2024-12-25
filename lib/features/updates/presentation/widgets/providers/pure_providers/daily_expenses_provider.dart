import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import Bloc, event and state
import "package:chinmay_expenses_app/features/updates/presentation/bloc/daily_expenses/daily_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/daily_expenses/daily_expenses_state.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/daily_expenses/daily_expenses_event.dart";

// Import utils
import "package:chinmay_expenses_app/common/utils/yyyy_mm_dd_date_formatter.dart";

class DailyExpensesProvider extends StatelessWidget {
  final String? date;
  final Function dailyExpensesUi;

  const DailyExpensesProvider({
    required this.date,
    required this.dailyExpensesUi,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DailyExpensesBloc>(
      create: (context) => DailyExpensesBloc()..add(
        FetchDailyExpenses(date: yyyyMmDdDateFormatter(date))
      ),
      child: BlocBuilder<DailyExpensesBloc, DailyExpensesState>(
        builder: (context, state) {
          if (state is DailyExpensesInitial || state is DailyExpensesLoading) {
            return Text("Loading");
          } else if (state is DailyExpensesLoaded) {
            Map? expenses = state.expenses.expenses;
            return dailyExpensesUi(
              date: date,
              expenses: expenses
            );
          } else if (state is DailyExpensesError) {
            return Center( child: Text("Expenses error: $state"));
          } else {
            return Container();
          }
        }
      )
    );
  }
}