import 'dart:io';

import 'package:flutter/material.dart';
class Contact {
  String fullname;
  String chat;
  String phoneNumber;
  File? image;
  DateTime? choosedDate;
  TimeOfDay? choosedTime;

  Contact ({
    required this.fullname,
    required this.chat,
    required this.phoneNumber,
    this.choosedDate,
    this.choosedTime,
    this.image,
  });
}