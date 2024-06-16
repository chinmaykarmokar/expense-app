import "package:dio/dio.dart";
import "package:chinmay_expenses_app/features/dashboard/models/add_expenses_model.dart";

class CurrentMonthTotalExpensesRepository {
  var dio = Dio();

  Future<AddExpenses> addExpenses({ required String date, required Map expenses }) async {
    try {
      var addExpensesResponse = await dio.post("http://10.0.2.2:5000/api/expenses/addExpense", data: {
        "date": date,
        "expenses": expenses
      });

      return AddExpenses(message: addExpensesResponse.data["message"]);
    }
    catch (error) {
      rethrow;
    }
  }
}