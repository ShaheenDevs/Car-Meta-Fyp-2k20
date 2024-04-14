import 'package:car_meta/models/chat_message.dart';
import 'package:car_meta/services/extention.dart';
import 'package:car_meta/ui/common/common/text.dart';
import 'package:car_meta/ui/views/chat/chatroom_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatRoomBubbles extends ViewModelWidget<ChatRoomViewModel> {
  final ChatMessage message;
  final String uID;
  const ChatRoomBubbles({Key? key, required this.message, required this.uID})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ChatRoomViewModel viewModel,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 14, right: 14),
      child: Align(
        alignment: (message.authorId == uID
            ? Alignment.topLeft
            : Alignment.bottomRight),
        child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              borderRadius: (message.authorId == uID
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
              color: (message.authorId == uID ? Colors.teal : Colors.amber),
            ),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: message.text.toString(),
                  color:
                      (message.authorId == uID ? Colors.black : Colors.white),
                ),
                CustomText(
                  text: timeAgo(message.createdOn),
                  fontSize: 10,
                  color:
                      (message.authorId == uID ? Colors.amber : Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
