import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import Bloc and state
import "package:chinmay_expenses_app/features/dashboard/bloc/total_expenses_bloc/total_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/dashboard/bloc/total_expenses_bloc/total_expenses_state.dart";
import "package:chinmay_expenses_app/features/dashboard/bloc/total_expenses_bloc/total_expenses_event.dart";

class CurrentMonthTotalExpenses extends StatelessWidget {
  const CurrentMonthTotalExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TotalExpensesBloc>(
      create: (context) => TotalExpensesBloc()..add(FetchTotalExpenses()),
      child: BlocBuilder<TotalExpensesBloc, TotalExpensesState>(
        builder: (context, state) {
          if (state is TotalExpensesInitial || state is TotalExpensesLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (state is TotalExpensesLoaded) {
            print(state.expenses);
            print(state.expenses.expenses);
            var expensesMap = state.expenses.expenses["expenses"];
            return Center(child: Text("Expenses: $expensesMap"));
          }
          else if (state is TotalExpensesError) {
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