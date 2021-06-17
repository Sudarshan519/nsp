class ServiceSubscription {
  ServiceSubscription({
    required this.status,
    required this.invoice,
  });

  final bool? status;
  final SubscriptionInvoice? invoice;
}

class SubscriptionInvoice {
  SubscriptionInvoice({
    required this.invoiceNumber,
    required this.paymentType,
    required this.invoiceDate,
    required this.invoiceDueDate,
    required this.totalAmount,
    required this.amountReceived,
    required this.dueAmount,
  });

  final String? invoiceNumber;
  final String? paymentType;
  final String? invoiceDate;
  final String? invoiceDueDate;
  final double? totalAmount;
  final double? amountReceived;
  final double? dueAmount;
}
