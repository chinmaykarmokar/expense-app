import "package:dio/dio.dart";

// Import model
import "package:chinmay_expenses_app/features/dashboard/models/current_month_total_expenses_model.dart";

class CurrentMonthTotalExpensesRepository {
  var dio = Dio();

  Future<CurrentMonthTotalExpenses> currentMonthTotalExpenses() async {
    try {
      Response<Map> response = await dio.get("http://10.0.2.2:5000/api/expenses/getCurrentMonthTotalExpenses");
      return CurrentMonthTotalExpenses(expenses: response.data);
    }
    catch (error) {
      return CurrentMonthTotalExpenses(error: error);
    }
  }
}