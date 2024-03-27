

import 'package:car_meta/ui/common/common/text.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:car_meta/ui/views/chat/chat_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatAppBar extends ViewModelWidget<ChatViewModel>
    implements PreferredSizeWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ChatViewModel viewModel,
  ) {
    return AppBar(
      actions: <Widget>[
        horizontalSpaceTiny,
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            // color: iconRareColor,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
      title: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            // color: iconRareColor,
          ),
          horizontalSpaceSmall,
          const CircleAvatar(
            radius: 20,
            // backgroundImage: AssetImage(profilePic),
          ),
          horizontalSpaceSmall,
          CustomText(
            text: "Fit Bot",
            fontSize: 20,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
