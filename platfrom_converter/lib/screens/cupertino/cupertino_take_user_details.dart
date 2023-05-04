import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platfrom_converter/controllers/providers/app_model_provider.dart';
import 'package:provider/provider.dart';

class cupertino_take_user_details extends StatefulWidget {
  const cupertino_take_user_details({Key? key}) : super(key: key);

  @override
  State<cupertino_take_user_details> createState() =>
      _cupertino_take_user_detailsState();
}

class _cupertino_take_user_detailsState
    extends State<cupertino_take_user_details> {
  bool isiphone = false;


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Platefrom Conveter"),
        trailing: CupertinoSwitch(
            value: Provider.of<App_provider>(context).appModel.isiphone,
            onChanged: (val) {
              Provider.of<App_provider>(context).changeApp();
              Navigator.of(context).pushNamed('take_user_details');
            }),
      ),
      child: Column(
        children: [],
      ),
    );
  }
}
