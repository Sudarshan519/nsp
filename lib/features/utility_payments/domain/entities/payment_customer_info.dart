class PaymentCustomerInfo {
  PaymentCustomerInfo({
    required this.billNumber,
    required this.dueDate,
    required this.amount,
    required this.refstan,
    required this.customerName,
    required this.date,
    required this.account,
    required this.officeCode,
    required this.customerId,
    required this.productId,
    required this.mobileNumber,
    required this.packages,
  });

  final String billNumber;
  final String dueDate;
  final String amount;
  final String refstan;
  final String customerName;
  final String date;
  final String account;
  final String officeCode;
  final String customerId;
  final String productId;
  final String mobileNumber;
  final List<Package> packages;
}

class Package {
  Package({
    required this.packageId,
    required this.amount,
    required this.packageName,
  });
  late final String packageId;
  late final double amount;
  late final String packageName;

  Package.fromJson(Map<String, dynamic> json) {
    packageId = (json['package_id'] as String?) ?? '';
    try {
      amount = double.parse(json['amount'].toString());
    } catch (e) {
      amount = 0.0;
    }
    packageName = (json['package_name'] as String?) ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['package_id'] = packageId;
    _data['amount'] = amount;
    _data['package_name'] = packageName;
    return _data;
  }
}
