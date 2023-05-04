import 'dart:io';

class Contact {
  String fullname;
  String email;
  String phoneNumber;
  File? image;

  Contact ({
    required this.fullname,
    required this.email,
    required this.phoneNumber,
    this.image,
  });
}