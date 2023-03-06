import 'user_model.dart';

class Message{
  final int id;
  final List<Content> content;
  final User sender;
  final User receiver;

  Message({
    required this.id,
    required this.content,
    required this.sender,
    required this.receiver
  });
}

class Content{
  final int id;
  final String time;
  final String date;
  final User sender;
  final String? text;
  final String? audio;
  final String? video;
  final String? file;
  final bool isRead;

  Content({
    required this.id,
    required this.time,
    required this.date,
    required this.sender,
    this.text,
    this.audio,
    this.video,
    this.file,
    required this.isRead
  });
}