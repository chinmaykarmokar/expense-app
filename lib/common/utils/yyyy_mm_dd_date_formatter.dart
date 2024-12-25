String? yyyyMmDdDateFormatter(dateString) {
  List<String>? dateSplit = dateString?.split(" ");

  Map<String, int> months = {
    "Jan": 1,
    "Feb": 2,
    "Mar": 3,
    "Apr": 4,
    "May": 5,
    "Jun": 6,
    "Jul": 7,
    "Aug": 8,
    "Sep": 9,
    "Oct": 10,
    "Nov": 11,
    "Dec": 12
  };

  String? formattedDate = "${dateSplit?[2]}-${months[dateSplit?[1]]}-${dateSplit?[0]}";
  return formattedDate;
}