import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/chat_message.dart';
import 'package:car_meta/services/extention.dart';
import 'package:car_meta/ui/common/common/custom_text_field/custom_text_field.dart';
import 'package:car_meta/ui/views/chat/chatroom_viewmodel.dart';
import 'package:car_meta/ui/views/chat/widgets/bubbles.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class ChatRoomView extends StackedView<ChatRoomViewModel> {
  final String? smsText;
  final ChatMember senderMember;
  final ChatMember receiverMember;
  const ChatRoomView({
    Key? key,
    required this.senderMember,
    required this.receiverMember,
    this.smsText,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChatRoomViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          senderMember.displayName ?? "",
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('ChatRooms')
                  .doc(mergeStrings(
                      senderMember.userId ?? "", receiverMember.userId ?? ""))
                  .collection('Messages')
                  .orderBy('createdOn', descending: true)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }
                return ListView(
                  reverse: true,
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    ChatMessage data = ChatMessage.fromJson(
                        document.data()! as Map<String, dynamic>);
                    return ChatRoomBubbles(
                      uID: senderMember.userId ?? "",
                      message: data,
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CustomTextField(
              radius: 10,
              hintText: "Type a message...",
              controller: viewModel.messageController,
              onFieldSubmitted: (e) {
                viewModel.sendDummyMessage();
              },
              hintStyle: const TextStyle(color: Colors.blueGrey),
              suffix: IconButton(
                icon: const Icon(Icons.send),
                onPressed: viewModel.sendDummyMessage,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(ChatRoomViewModel viewModel) {
    viewModel.onViewModelReady(senderMember, receiverMember, smsText);
    super.onViewModelReady(viewModel);
  }

  @override
  ChatRoomViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChatRoomViewModel();
}
