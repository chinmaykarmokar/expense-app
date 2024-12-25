import "package:dio/dio.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/daily_expenses_model.dart";

class DailyExpensesRepository {
  var dio = Dio();
  
  Future<DailyExpenses> dailyExpenses({ required String? date }) async {
    try {
      Response response = await dio.get("http://10.0.2.2:5000/api/expenses/getOneDayExpense", queryParameters: {
        "date": date
      });

      return DailyExpenses(expenses: response.data);
    } 
    catch (error) {
      return DailyExpenses(error: error);
    }
  }
}