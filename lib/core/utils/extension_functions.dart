import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toFormattedDate() {
    return DateFormat("d MMMM yyyy").format(this);
  }
}
