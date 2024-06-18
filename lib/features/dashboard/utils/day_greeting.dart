String getDayGreeting() {
  DateTime currentDate = DateTime.now();
  int hour = currentDate.hour;

  if (hour >= 5 && hour < 12) {
    return "Good Morning, Chinmay!";
  }
  else if (hour >= 12 && hour < 18) {
    return "Good Afternoon, Chinmay!";
  }
  else if (hour >= 18 && hour < 22) {
    return "Good Evening, Chinmay!";
  }
  else {
    return "Good Night, Chinmay!";
  }
}