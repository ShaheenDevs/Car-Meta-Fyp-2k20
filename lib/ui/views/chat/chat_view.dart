import 'package:car_meta/ui/views/chat/widgets/app_bar.dart';
import 'package:car_meta/ui/views/chat/widgets/body.dart';
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
    return const Scaffold(
      appBar: ChatAppBar(),
      body: ChatBody(),
    );
  }

  @override
  ChatViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChatViewModel();
}
