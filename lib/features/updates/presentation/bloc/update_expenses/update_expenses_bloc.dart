import "package:flutter_bloc/flutter_bloc.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/update_expenses_model.dart";

// Import repo
import "package:chinmay_expenses_app/features/updates/repo/update_expenses_repo.dart";

// Import event and state
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_event.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_state.dart";

class UpdateExpensesBloc extends Bloc<UpdateExpensesEvent, UpdateExpensesState> {
  UpdateExpensesRepository updateExpensesRepository = UpdateExpensesRepository();

  UpdateExpensesBloc() : super(UpdateExpensesInitial()) {
    on<UpdateExpense>((event, emit) async {
      emit(UpdateExpensesLoading());

      try {
        final message = await updateExpensesRepository.updateExpenses(date: event.date, type: event.type, price: event.price);
        emit(UpdateExpensesSuccess(message: message));
      }
      catch (error) {
        emit(UpdateExpensesError(error: UpdateExpenses(error: error)));
      }
    });
  }
}