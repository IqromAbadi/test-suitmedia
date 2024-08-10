import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FisrtScreenController extends GetxController {
  final nameController = TextEditingController();
  final palindromeController = TextEditingController();

  void checkPalindrome() {
    String input = palindromeController.text
        .replaceAll(RegExp(r'[^a-zA-Z]'), '')
        .toLowerCase();

    String reversedInput = input.split('').reversed.join('');

    bool isPalindrome = input == reversedInput;

    Get.defaultDialog(
      contentPadding: EdgeInsets.all(16),
      radius: 10,
      title: isPalindrome ? "Palindrome" : "Not Palindrome",
      middleText: isPalindrome ? "isPalindrome" : "not palindrome",
    );
  }
}
