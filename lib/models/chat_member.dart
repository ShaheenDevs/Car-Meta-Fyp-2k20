class ChatMember {
  const ChatMember({
    this.displayName,
    this.userSince,
    this.profile,
    this.username,
    required this.userId,
    required this.read,
  });

  final bool read;
  final String? username;
  final String? displayName;
  final String? userId;
  final DateTime? userSince;
  final String? profile;

  ChatMember.fromJson(Map<String, dynamic> json)
      : read = json['read'],
        username = json['username'],
        displayName = json['displayName'],
        userId = json['userId'],
        userSince = json['userSince'] != null
            ? DateTime.parse(json['userSince'])
            : null,
        profile = json['profile'];

  Map<String, dynamic> toJson() => {
        'read': read,
        'username': username,
        'displayName': displayName,
        'userId': userId,
        'userSince': userSince?.toIso8601String(),
        'profile': profile,
      };
}
