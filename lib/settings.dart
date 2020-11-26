import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var EL = EasyLocalization.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('switch locale'.tr()),
          onPressed: () {
            EL.locale =
                EL.locale.languageCode == 'en' ? Locale('fr') : Locale('en');
          },
        ),
      ),
    );
  }
}
