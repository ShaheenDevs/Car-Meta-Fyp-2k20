import 'dart:developer';

import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/chat_room.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChatViewModel extends BaseViewModel {
  final _firestore = FirebaseFirestore.instance;
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  AuthModel? get userData => _authService.userData;
  Stream<List<ChatRoom>> getChatRoomsStream() async* {
    try {
      final result = _firestore
          .collection('ChatRooms')
          .where('membersId', arrayContains: userData?.uID)
          .orderBy('lastMessage.createdOn', descending: true)
          .snapshots();
      await for (final event in result) {
        final List<ChatRoom> chatRooms = List.empty(growable: true);
        for (final doc in event.docs) {
          final data = doc.data();
          try {
            chatRooms.add(ChatRoom.fromJson(data, doc.id));
          } catch (e) {
            log("${doc.reference.path} ==-=-=-=$e");
          }
        }
        yield chatRooms;
      }
    } catch (e, stack) {
      log("$e $stack");
    }
  }

  navigateToChatRoomView(ChatMember senderMember, ChatMember receiverMember) {
    _navigationService.navigateToChatRoomView(
        senderMember: senderMember, receiverMember: receiverMember);
  }
}
