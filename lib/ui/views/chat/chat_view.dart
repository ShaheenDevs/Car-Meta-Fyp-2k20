import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/chat_room.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'chat_viewmodel.dart';

class ChatView extends StackedView<ChatViewModel> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChatViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        StreamBuilder<List<ChatRoom>>(
          stream: viewModel.getChatRoomsStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ChatRoom> chatRooms = snapshot.data!;
              return Column(
                children: chatRooms.map((chatRoom) {
                  return InkWell(
                    onTap: () {
                      ChatMember? otherUser =
                          chatRoom.members["senderId"]?.userId ==
                                  viewModel.userData?.uID
                              ? chatRoom.members["receiverId"]
                              : chatRoom.members["senderId"];
                      viewModel.navigateToChatRoomView(
                          ChatMember(
                              userId: viewModel.userData?.uID,
                              read: true,
                              displayName: viewModel.userData?.userName,
                              profile: viewModel.userData?.profile),
                          ChatMember(
                            userId: otherUser?.userId,
                            read: true,
                            displayName: otherUser?.displayName,
                            profile: otherUser?.profile,
                          ));
                    },
                    child: Card(
                      margin: const EdgeInsets.all(2),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage((viewModel
                                          .userData?.uID !=
                                      chatRoom.members["senderId"]?.userId
                                  ? chatRoom.members["senderId"]?.profile
                                  : chatRoom.members["receiverId"]?.profile) ??
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUfNCnMwMeh_5WuKXe55VTTVQcF1CN7Yb6Jw5TWYcngvaPF_z7yapb8o0PCoQMVv3UTs&usqp=CAU"),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${viewModel.userData?.uID != chatRoom.members["senderId"]?.userId ? chatRoom.members["senderId"]?.displayName : chatRoom.members["receiverId"]?.displayName}",
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              maxLines: 1,
                              chatRoom.lastMessage?.text ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }

  @override
  ChatViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChatViewModel();
}
