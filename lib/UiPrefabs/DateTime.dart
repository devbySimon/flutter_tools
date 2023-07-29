import 'package:flutter/widgets.dart';
import 'package:tools/UiPrefabs/TextFieldTitle.dart';

Text DateTimeComparedToNow(DateTime timestamp) {

  if (timestamp.day == DateTime.now().day
      && timestamp.month == DateTime.now().month
      && timestamp.year == DateTime.now().year) {

    return BySimonTextDescription("${timestamp.hour}:${timestamp.minute} Uhr");
  } else if (timestamp.year == DateTime.now().year) {
    return BySimonTextDescription("${timestamp.day}.${timestamp.month}");
  } else {
    return BySimonTextDescription("${timestamp.day}.${timestamp.month}.${timestamp.year}");
  }
}

Text DateTimeToDate(DateTime timestamp) {

  return BySimonTextDescription("${timestamp.day}.${timestamp.month}.${timestamp.year}");
}