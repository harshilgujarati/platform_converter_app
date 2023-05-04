import 'package:flutter/material.dart';

import '../models/contact_model.dart';

class contactList {
  static List<Contact> allContacts = [];
}


GlobalKey<FormState> formKey = GlobalKey<FormState>();
GlobalKey<FormState> formKeys = GlobalKey<FormState>();

TextEditingController namecontroller = TextEditingController();
TextEditingController phonecontroller = TextEditingController();
TextEditingController chatcontroller = TextEditingController();