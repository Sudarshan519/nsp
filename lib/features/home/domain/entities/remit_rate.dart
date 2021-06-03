import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;

class RemitRate {
  RemitRate({
    required this.id,
    required this.remitCharge,
    required this.remitExchange,
    required this.remitServiceName,
    required this.logo,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.updatedBy,
  });

  final int? id;
  final List<RemitCharge>? remitCharge;
  final List<RemitExchange>? remitExchange;
  final String? remitServiceName;
  final String? logo;
  final bool? isActive;
  final String? createdAt;
  final String? updatedAt;
  final int? updatedBy;

  String get formattedDate {
    final dateObj = date_time.convertToDate(updatedAt ?? '');
    if (dateObj != null) {
      return date_time.dateWithTimeFormat(dateObj);
    }
    return '';
  }
}

class RemitCharge {
  RemitCharge({
    required this.id,
    required this.rangeName,
    required this.remitRate,
  });

  final int? id;
  final String? rangeName;
  final double? remitRate;
}

class RemitExchange {
  RemitExchange({
    required this.id,
    required this.date,
    required this.primaryCurrency,
    required this.primaryRate,
    required this.exchangeRate,
    required this.exchangeReverseRate,
  });

  final int? id;
  final String? date;
  final String? primaryCurrency;
  final String? primaryRate;
  final double? exchangeRate;
  final double? exchangeReverseRate;

  String get formattedDate {
    final dateObj = date_time.convertToDate(date ?? '');
    if (dateObj != null) {
      return date_time.dateMonthFormat(dateObj);
    }
    return '';
  }

  String get formattedDateWithYear {
    final dateObj = date_time.convertToDate(date ?? '');
    if (dateObj != null) {
      return date_time.dateFormat(dateObj);
    }
    return '';
  }
}
