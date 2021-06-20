class ServiceSubscription {
  ServiceSubscription({
    required this.status,
    required this.invoice,
  });

  final bool? status;
  final List<SubscriptionInvoice>? invoice;
}

class SubscriptionInvoice {
  SubscriptionInvoice({
    required this.insuredName,
    required this.planName,
    required this.invoiceNumber,
    required this.paymentType,
    required this.invoiceDate,
    required this.invoiceDueDate,
    required this.totalAmount,
    required this.amountReceived,
    required this.dueAmount,
    this.isSelected = false,
  });

  final String? insuredName;
  final String? planName;
  final String? invoiceNumber;
  final String? paymentType;
  final String? invoiceDate;
  final String? invoiceDueDate;
  final double? totalAmount;
  final double? amountReceived;
  final double? dueAmount;
  bool isSelected;
}
