import 'dart:io';

import 'package:flutter/cupertino.dart';

class biomodel {
  bool profileswitch;
  File userImage;
  TextEditingController bioname;
  TextEditingController bio;

  biomodel({
    required this.profileswitch,
    required this.userImage,
    required this.bioname,
    required this.bio,
  });
}
