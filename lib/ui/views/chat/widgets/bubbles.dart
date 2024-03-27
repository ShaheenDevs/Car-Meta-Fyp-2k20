import 'package:car_meta/ui/common/chat_messages.dart';
import 'package:car_meta/ui/common/common/text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../chat_viewmodel.dart';

class ChatBubbles extends ViewModelWidget<ChatViewModel> {
  final ChatMessage message;
  const ChatBubbles({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ChatViewModel viewModel,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 14, right: 14),
      child: Align(
        alignment: (message.messageType == "recieve"
            ? Alignment.topLeft
            : Alignment.bottomRight),
        child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              borderRadius: (message.messageType == "recieve"
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(20))
                  : const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(0))),
              color:
                  (message.messageType == "recieve" ? Colors.teal : Colors.amber),
            ),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: message.messageContent.toString(),
                  color:
                      (message.messageType == "recieve" ? Colors.black : Colors.white),
                ),
                CustomText(
                  text: "08:00AM",
                  fontSize: 10,
                  color: (message.messageType == "recieve"
                      ? Colors.amber
                      : Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
