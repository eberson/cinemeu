import 'package:intl/intl.dart';

final _simpleDateFormat = DateFormat("dd/MM/yyyy");

String formatSimpleDate(DateTime dateTime) =>
    _simpleDateFormat.format(dateTime);
