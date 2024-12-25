import "package:dio/dio.dart";

// Import model
import "package:chinmay_expenses_app/features/updates/models/update_expenses_model.dart";

class UpdateExpensesRepository {
  var dio = Dio();

  Future<UpdateExpenses> updateExpenses({ required String? date, required String? type, required double? price }) async {
    try {
      Response<Map> updateExpensesResponse = await dio.post("http://10.0.2.2:5000/api/expenses/updateExpense", data: {
        "date": date,
        type?.toLowerCase(): price
      });

      return UpdateExpenses(message: updateExpensesResponse.data);
    }
    catch (error) {
      return UpdateExpenses(error: error);
    }
  }
}