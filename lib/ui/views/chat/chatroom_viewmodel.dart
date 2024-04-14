import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/chat_message.dart';
import 'package:car_meta/models/chat_room.dart';
import 'package:car_meta/services/extention.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatRoomViewModel extends BaseViewModel {
  final _firestore = FirebaseFirestore.instance;
  // final CollectionReference _messagesCollection = FirebaseFirestore.instance
  //     .collection('ChatRooms')
  //     .doc("senderIdreceiverId")
  //     .collection('Messages');
  ChatMember? senderMember;
  ChatMember? receiverMember;
  TextEditingController messageController = TextEditingController();
  onViewModelReady(
      ChatMember senderMember, ChatMember receiverMember, String? smsText) {
    messageController.text = smsText ?? "";
    this.senderMember = senderMember;
    this.receiverMember = receiverMember;
  }

  // Widget buildMessageBubble(ChatMessage message, authorId) {
  //   EdgeInsetsGeometry padding;
  //   Color color;
  //   CrossAxisAlignment alignment;

  //   if (message.authorId == authorId) {
  //     padding = const EdgeInsets.fromLTRB(80.0, 10.0, 10.0, 10.0);
  //     color = Colors.blue;
  //     alignment = CrossAxisAlignment.end;
  //   } else {
  //     padding = const EdgeInsets.fromLTRB(10.0, 10.0, 80.0, 10.0);
  //     color = Colors.green;
  //     alignment = CrossAxisAlignment.start;
  //   }

  //   return Padding(
  //     padding: padding,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: color,
  //         borderRadius: BorderRadius.circular(8.0),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Column(
  //           crossAxisAlignment: alignment,
  //           children: [
  //             Text(
  //               'Sent at: ${message.createdOn.toLocal()}',
  //               style: const TextStyle(fontSize: 12.0, color: Colors.white70),
  //             ),
  //             Text(
  //               message.text,
  //               style: const TextStyle(color: Colors.white),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Future<void> sendDummyMessage() async {
    // Replace the following line with your actual logic to send a message
    ChatMessage dummyMessage = ChatMessage(
      text: messageController.text,
      authorId: senderMember?.userId,
      createdOn: DateTime.now(),
    );

    // ChatMember senderMember = const ChatMember(
    //   userId: 'senderId',
    //   read: true,
    // );

    // ChatMember receiverMember = const ChatMember(
    //   userId: 'receiverId',
    //   read: true,
    // );

    ChatRoom dummyChatRoom = ChatRoom(
      membersId: [senderMember?.userId ?? "", receiverMember?.userId ?? ""],
      lastMessage: dummyMessage,
      members: {
        'senderId': senderMember!,
        'receiverId': receiverMember!,
      },
      createdOn: DateTime.now(),
    );

    await startChatRoom(dummyMessage, dummyChatRoom);
    messageController.clear();
  }

  Future<String> startChatRoom(ChatMessage message, ChatRoom chatRoom) async {
    final ref = _firestore.collection('ChatRooms').doc(
        mergeStrings(senderMember?.userId ?? "", receiverMember?.userId ?? ""));
    await ref.set(chatRoom.toJson());
    final roomId = ref.id;
    await sendMessage(message, roomId);
    return roomId;
  }

  Future<void> sendMessage(ChatMessage message, String chatRoomId) async {
    String messageText = messageController.text;
    if (messageText.isNotEmpty) {
      DocumentReference roomRef =
          _firestore.collection('ChatRooms').doc(chatRoomId);
      DocumentReference messageRef = roomRef.collection('Messages').doc();
      await messageRef.set(message.toJson());
      messageController.clear();
    }
  }
}
