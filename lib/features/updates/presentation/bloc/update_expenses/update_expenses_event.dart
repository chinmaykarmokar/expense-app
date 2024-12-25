abstract class UpdateExpensesEvent {}

class UpdateExpense extends UpdateExpensesEvent {
  final String? date;
  final String? type;
  final double? price;

  UpdateExpense({
    required this.date,
    required this.type,
    required this.price
  });
}