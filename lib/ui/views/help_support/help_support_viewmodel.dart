import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpSupportViewModel extends BaseViewModel {
  hexStringToColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  TextEditingController nameCtrl = TextEditingController();

  TextEditingController emailCtrl = TextEditingController();

  TextEditingController messageCtrl = TextEditingController();
  sent() async {
    String name = nameCtrl.text;
    String email = emailCtrl.text;
    String message = messageCtrl.text;
    if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
      String whatsappMessage =
          "Hi!,\nI hope this message finds you well. My name is $name, and I am reaching out to you regarding $message. I would appreciate the opportunity to discuss this matter further and explore potential solutions.\nYou can reach me via email at $email or by phone.\nThank you for your attention to this matter, and I look forward to hearing from you soon.\nBest regards,\n$name";
      final Uri url =
          Uri.parse("https://wa.me/+923095522300?text=$whatsappMessage");
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } else {}
  }
}
