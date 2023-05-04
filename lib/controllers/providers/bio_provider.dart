import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plateform_convter_app/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider extends ChangeNotifier {
  biomodel BioModel;

  ProfileProvider({required this.BioModel});

  changeProfileSwitchValue() async {
    BioModel.profileswitch = !BioModel.profileswitch;

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool('profileSwitch', BioModel.profileswitch);

    notifyListeners();
  }

  pickImage() async {
    ImagePicker pick = ImagePicker();
    XFile? img = await pick.pickImage(source: ImageSource.camera);

    BioModel.userImage = File(img!.path);
    notifyListeners();
  }

  saveDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('userImage', BioModel.userImage.path);
    prefs.setString('userName', BioModel.bioname.text);
    prefs.setString('userBio', BioModel.bio.text);

    notifyListeners();
  }

  clearDetails() async {
    BioModel.bioname.clear();
    BioModel.bio.clear();
    BioModel.userImage = File('');

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('profileimage', BioModel.userImage.path);
    prefs.setString('bioname', BioModel.bioname.text);
    prefs.setString('bio', BioModel.bio.text);

    notifyListeners();
  }
}
