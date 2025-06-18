import 'package:payment_integration/core/utils/api_keys.dart';
import 'package:payment_integration/core/utils/api_service.dart';
import 'package:payment_integration/core/utils/api_urls.dart';
import 'package:payment_integration/features/payment/presentation/data/models/payment_intent_input_model.dart';
import 'package:payment_integration/features/payment/presentation/data/models/payment_intent_model.dart';

class StripeService {
  ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      url: ApiUrls.createPayment,
      body: paymentIntentInputModel.toJason(),
      token: ApiKeys.secretKey,
    );

    var paymentIntentModel =  PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
