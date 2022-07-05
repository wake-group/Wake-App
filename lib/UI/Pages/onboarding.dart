import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:wake/translations/locale_keys.g.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(child: Text(LocaleKeys.start.tr()))],
      ),
    );
  }
}
