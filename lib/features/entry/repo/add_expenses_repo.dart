import "package:dio/dio.dart";

// Import model
import "package:chinmay_expenses_app/features/entry/models/add_expenses_model.dart";

class AddExpensesRepository {
  var dio = Dio();

  Future<AddExpenses> addExpenses({ required String date, required Map expenses }) async {
    try {
      Response<Map> addExpensesResponse = await dio.post("http://10.0.2.2:5000/api/expenses/addExpense", data: {
        "date": date,
        "expenses": expenses
      });

      return AddExpenses(message: addExpensesResponse.data);
    }
    catch (error) {
      return AddExpenses(error: error);
    }
  }
}