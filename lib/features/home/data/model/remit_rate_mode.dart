import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';

class RemitRateModel extends RemitRate {
  RemitRateModel({
    required int? id,
    required List<RemitChargeModel>? remitCharge,
    required List<RemitExchangeModel>? remitExchange,
    required String? remitServiceName,
    required String? logo,
    required bool? isActive,
    required String? createdAt,
    required String? updatedAt,
    required int? updatedBy,
  }) : super(
          id: id,
          remitCharge: remitCharge,
          remitExchange: remitExchange,
          remitServiceName: remitServiceName,
          logo: logo,
          isActive: isActive,
          createdAt: createdAt,
          updatedAt: updatedAt,
          updatedBy: updatedBy,
        );

  factory RemitRateModel.fromJson(Map<String, dynamic> json) => RemitRateModel(
        id: json["id"] == null ? null : json["id"] as int?,
        remitCharge: json["remit_charge"] == null
            ? null
            : List<RemitChargeModel>.from(
                (json["remit_charge"] as Iterable).map(
                  (x) => RemitChargeModel.fromJson(x as Map<String, dynamic>),
                ),
              ),
        remitExchange: json["remit_exchange"] == null
            ? null
            : List<RemitExchangeModel>.from((json["remit_exchange"] as Iterable)
                .map((x) =>
                    RemitExchangeModel.fromJson(x as Map<String, dynamic>))),
        remitServiceName: json["remit_service_name"] == null
            ? null
            : json["remit_service_name"] as String?,
        logo: json["logo"] == null ? null : json["logo"] as String?,
        isActive: json["is_active"] == null ? null : json["is_active"] as bool?,
        createdAt:
            json["created_at"] == null ? null : json["created_at"] as String?,
        updatedAt:
            json["updated_at"] == null ? null : json["updated_at"] as String?,
        updatedBy:
            json["updated_by"] == null ? null : json["updated_by"] as int?,
      );
}

class RemitChargeModel extends RemitCharge {
  RemitChargeModel({
    required int? id,
    required String? rangeName,
    required double? remitRate,
  }) : super(
          id: id,
          rangeName: rangeName,
          remitRate: remitRate,
        );

  factory RemitChargeModel.fromJson(Map<String, dynamic> json) =>
      RemitChargeModel(
        id: json["id"] == null ? null : json["id"] as int?,
        rangeName:
            json["range_name"] == null ? null : json["range_name"] as String?,
        remitRate:
            json["remit_rate"] == null ? null : json["remit_rate"] as double?,
      );
}

class RemitExchangeModel extends RemitExchange {
  RemitExchangeModel({
    required int? id,
    required String? date,
    required String? primaryCurrency,
    required String? primaryRate,
    required double? exchangeRate,
    required double? exchangeReverseRate,
  }) : super(
          id: id,
          date: date,
          primaryCurrency: primaryCurrency,
          primaryRate: primaryRate,
          exchangeRate: exchangeRate,
          exchangeReverseRate: exchangeReverseRate,
        );

  factory RemitExchangeModel.fromJson(Map<String, dynamic> json) =>
      RemitExchangeModel(
        id: json["id"] == null ? null : json["id"] as int?,
        date: json["date"] == null ? null : json["date"] as String?,
        primaryCurrency: json["primary_currency"] as String?,
        primaryRate: json["primary_rate"] == null
            ? null
            : json["primary_rate"] as String?,
        exchangeRate: json["exchange_rate"] == null
            ? null
            : json["exchange_rate"] as double?,
        exchangeReverseRate: json["exchange_reverse_rate"] == null
            ? null
            : json["exchange_reverse_rate"] as double?,
      );
}
