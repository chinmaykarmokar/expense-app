import "package:chinmay_expenses_app/common/widgets/compounds/pure_widgets/daily_lists_widget.dart";
import "package:chinmay_expenses_app/features/dashboard/presentation/screens/wrappers/dashboard_screen_wrapper.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import BLOC and state
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_bloc.dart";
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_state.dart";
import "package:go_router/go_router.dart";

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
      child: BlocListener<AddExpensesBloc, AddExpensesState>(
        listener: (context, state) {
          if (state is AddExpensesSuccess) {
            context.go("/dashboard");
            return;
          }
        },
        child: BlocBuilder<AddExpensesBloc, AddExpensesState>(
          builder: (context, state) {
            if (state is AddExpensesInitial || state is AddExpensesLoading) {
              return entryUi();
            } else if (state is AddExpensesError) {
              return entryUi();
            } else {
              return Container();
            }
          }
        )
      )
    );
  }
}