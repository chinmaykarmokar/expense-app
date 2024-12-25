import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import bloc and state
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_state.dart";

class UpdateExpensesProvider extends StatelessWidget {
  final String? date;
  final String? type;
  final double? price;
  final Function updateExpensesUi;

  const UpdateExpensesProvider({
    required this.date,
    required this.type,
    required this.price,
    required this.updateExpensesUi,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateExpensesBloc>(
      create: (context) => UpdateExpensesBloc(),
      child: BlocListener<UpdateExpensesBloc, UpdateExpensesState>(
        listener: (context, state) {
          if (state is UpdateExpensesSuccess) {
            context.go("/monthlyDailyExpenses");
            return;
          }
        },
        child: BlocBuilder<UpdateExpensesBloc, UpdateExpensesState>(
          builder: (context, state) {
            if (state is UpdateExpensesInitial || state is UpdateExpensesLoading) {
              return updateExpensesUi(
                date: date,
                type: type,
                price: price
              );
            } else if (state is UpdateExpensesError) {
              return updateExpensesUi(
                date: date,
                type: type,
                price: price
              );
            } else {
              return Container();
            }
          }
        )
      )
    );
  }
}