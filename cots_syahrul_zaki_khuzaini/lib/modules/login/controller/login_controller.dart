import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneNumber = "".obs;

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }

  bool validatePhoneNumber(String number) {
    return number.isNotEmpty && number.length >= 10;
  }
}
