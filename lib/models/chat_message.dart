class ChatMessage {
  const ChatMessage({
    this.id,
    this.updatedOn,
    this.attachmentUrl,
    this.type,
    required this.text,
    this.url,
    required this.authorId,
    required this.createdOn,
  });

  final String? id;
  final String text;
  final String? url;
  final String? type;
  final String? authorId;
  final String? attachmentUrl;
  final DateTime? updatedOn;
  final DateTime createdOn;

  ChatMessage.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        text = json['text'],
        url = json['url'],
        type = json['type'],
        authorId = json['authorId'],
        attachmentUrl = json['attachmentUrl'],
        updatedOn = json['updatedOn'] != null
            ? DateTime.parse(json['updatedOn'])
            : null,
        createdOn = DateTime.parse(json['createdOn']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'url': url,
        'type': type,
        'authorId': authorId,
        'attachmentUrl': attachmentUrl,
        'updatedOn': updatedOn?.toIso8601String(),
        'createdOn': createdOn.toIso8601String(),
      };
}
