import 'package:car_meta/ui/common/chat_messages.dart';
import 'package:stacked/stacked.dart';

class ChatViewModel extends BaseViewModel {
  List<ChatMessage> message = [
    ChatMessage(messageContent: "", messageType: ""),
    ChatMessage(messageContent: "khawr kya hal hy", messageType: "send"),
    ChatMessage(messageContent: "Hello? Will", messageType: "send"),
    ChatMessage(messageContent: "How have you been?", messageType: "send"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude, wbu?",
        messageType: "recieve"),
    ChatMessage(messageContent: "ehh doing OK.", messageType: "send"),
    ChatMessage(
        messageContent: "is there anything wrong?", messageType: "recieve"),
    ChatMessage(messageContent: "no everything is fine ", messageType: "send"),
    ChatMessage(messageContent: "Ok", messageType: "recieve"),
    ChatMessage(
        messageContent:
            "kfsjglfhdn dfkjg flkgj;oid ifgu gduifg uifdug oih g fodiguoihu",
        messageType: "recieve"),
    ChatMessage(messageContent: "ugi igu gfiduh ifduh", messageType: "send"),
    ChatMessage(messageContent: "Ok", messageType: "recieve"),
    ChatMessage(messageContent: "Ok jhkf sgdlgj 65 65 65", messageType: "send"),
    ChatMessage(
        messageContent: "sdgosu iouh difu hifudh uhdiof uhf",
        messageType: "recieve"),
  ];
}
