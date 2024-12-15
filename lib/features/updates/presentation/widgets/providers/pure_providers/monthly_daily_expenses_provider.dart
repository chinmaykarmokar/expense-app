import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import Bloc, event and state
import "package:chinmay_expenses_app/features/updates/presentation/bloc/monthly_daily_expenses/monthly_daily_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/monthly_daily_expenses/monthly_daily_expenses_event.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/monthly_daily_expenses/monthly_daily_expenses_state.dart";

class MonthlyDailyExpensesProvider extends StatelessWidget {
  final Function monthlyDailyExpensesUi;

  const MonthlyDailyExpensesProvider({
    required this.monthlyDailyExpensesUi,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MonthlyDailyExpensesBloc>(
      create: (context) => MonthlyDailyExpensesBloc()..add(FetchMonthlyDailyExpenses()),
      child: BlocBuilder<MonthlyDailyExpensesBloc, MonthlyDailyExpensesState>(
        builder: (context, state) {
          if (state is MonthlyDailyExpensesInitial || state is MonthlyDailyExpensesLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (state is MonthlyDailyExpensesLoaded) {
            List? expenses = state.expenses.expenses;
            return monthlyDailyExpensesUi(monthlyExpenses: expenses);
          }
          else if (state is MonthlyDailyExpensesError) {
            return Center( child: Text("Expenses error: $state"));
          }
          else {
            return Container();
          }
        }
      )
    );
  }
}