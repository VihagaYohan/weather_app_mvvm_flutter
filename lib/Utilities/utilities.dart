import 'package:intl/intl.dart';

class Utilities {
  static Map<dynamic, String> imageMap = {
    'Parcially cloudy': 'assets/images/nightRain.png',
    "Overcast": 'assets/images/sunSlowRain.png',
    "Clear": 'assets/images/wind.png',
    'null': 'assets/images/nightStatRain.png'
  };

  static String formatDate(DateTime date) {
    String formattedDate = DateFormat('EEEE d MMM').format(date);
    return formattedDate;
  }

  static String extractDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('d').format(dateTime);
    return formattedDate;
  }

  static String extractDay(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('EEEE').format(dateTime);
    String abbreviatedDay = formattedDate.substring(0, 3);
    return abbreviatedDay;
  }

  static String formattedTime(String time) {
    DateFormat dateFormat = DateFormat('hh:mm a');
    DateTime dateTime = DateTime.parse(time);
    String timeIn12HourFormat = dateFormat.format(dateTime);
    return timeIn12HourFormat;
  }

  static String currentTime() {
    DateFormat dateFormat = DateFormat('hh:mm a');
    DateTime now = DateTime.now();
    String time = dateFormat.format(now);
    return time;
  }

  static String formatTimeWithoutAmPm(String time) {
    DateFormat dateFormat = DateFormat('hh:mm');
    DateTime dateTime = DateTime.parse(time);
    String timeIn24HourFormat = dateFormat.format(dateTime);
    return timeIn24HourFormat;
  }

  static bool checkTime(String time) {
    DateFormat dateFormat = DateFormat('hh a');
    DateTime dateTime = DateTime.parse(time);
    DateTime now = DateTime.now();
    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}
