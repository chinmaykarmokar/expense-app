import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import "package:chinmay_expenses_app/features/dashboard/repo/current_month_total_expenses_repo.dart";
import 'total_expenses_event.dart';
import 'total_expenses_state.dart';

class TotalExpensesBloc extends Bloc<TotalExpensesEvent, TotalExpensesState> {
  final CurrentMonthTotalExpensesRepository currentMonthTotalExpensesRepository = CurrentMonthTotalExpensesRepository();

  TotalExpensesBloc() : super(TotalExpensesInitial()) {
    on<FetchTotalExpenses>((event, emit) async {
      emit(TotalExpensesLoading());

      try {
        final totalExpenses = await currentMonthTotalExpensesRepository.currentMonthTotalExpenses();
        // print(jsonDecode(totalExpenses as String).runtimeType);
        emit(TotalExpensesLoaded(expenses: totalExpenses));
      } catch (error) {
        emit(TotalExpensesError(message: "Could not fetch total expenses for current month. $error"));
      }
    });
  }
}