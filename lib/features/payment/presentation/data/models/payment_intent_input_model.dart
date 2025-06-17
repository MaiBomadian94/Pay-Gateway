class PaymentIntentInputModel {
  final String currency;
  final String amount;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  toJason() {
    return {
      'amount': amount,
      'currency': currency,

    };
  }
}
