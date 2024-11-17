import "package:dio/dio.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/monthly_daily_expenses_model.dart";

class CurrentMonthDailyExpensesRepository {
  var dio = Dio();

  Future<MonthlyDailyExpenses> currentMonthDailyExpenses() async {
    try {
      Response response = await dio.get("http://10.0.2.2:5000/api/expenses/getCurrentMonthDailyExpenses");
      print("Response ${response.data}");
      return MonthlyDailyExpenses(expenses: response.data);
    }
    catch (error) {
      return MonthlyDailyExpenses(error: error);
    }
  }
}