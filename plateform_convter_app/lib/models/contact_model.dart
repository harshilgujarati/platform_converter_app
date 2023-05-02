import 'dart:io';

class Contact {
  String fullname;
  String chat;
  String phoneNumber;
  File? image;

  Contact ({
    required this.fullname,
    required this.chat,
    required this.phoneNumber,
    this.image,
  });
}