import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import BLOC and state
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_bloc.dart";
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_state.dart";

class Entry extends StatelessWidget {
  final Function entryUi;

  const Entry({
    required this.entryUi,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddExpensesBloc>(
      create: (context) => AddExpensesBloc(),
      child: BlocBuilder<AddExpensesBloc, AddExpensesState>(
        builder: (context, state) {
          if (state is AddExpensesInitial || state is AddExpensesLoading) {
            return entryUi();
          } else if (state is AddExpensesSuccess) {
            return Text("Expense added successfully");
          } else if (state is AddExpensesError) {
            return entryUi();
          } else {
            return Container();
          }
        }
      )
    );
  }
}