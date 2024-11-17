import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import Bloc and state
import "package:chinmay_expenses_app/features/dashboard/presentation/bloc/total_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/dashboard/presentation/bloc/total_expenses_event.dart";
import "package:chinmay_expenses_app/features/dashboard/presentation/bloc/total_expenses_state.dart";

class Dashboard extends StatelessWidget {
  final Function dashboardUIWrapper;

  const Dashboard({
    required this.dashboardUIWrapper,
    super.key
  });

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
            var expensesMap = state.expenses.expenses?["expenses"];
            return dashboardUIWrapper(totalExpense: expensesMap);
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