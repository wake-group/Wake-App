import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wake/UI/widgets/widgets.dart';
import 'package:wake/translations/locale_keys.g.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // S
          Positioned(
              top: 15,
              left: size.width * .42,
              child: Text(
                "Wake",
                style: TextStyle(fontSize: 23),
              )),
          Positioned(
              top: size.height * .3,
              left: size.width * .45,
              child: SvgPicture.asset(
                "assets/svgs/bubble.svg",
                height: 70,
              )),
          Positioned(
              top: size.height * .5,
              left: size.width * .65,
              child: SvgPicture.asset(
                "assets/svgs/bubble.svg",
                height: 110,
              )),
          Positioned(
              top: size.height * .7,
              left: size.width * .15,
              child: SvgPicture.asset(
                "assets/svgs/bubble.svg",
                height: 120,
              )),
          Positioned(
            top: size.height * .5,
            left: size.width * .2,
            child: Center(
                child: Text(
              LocaleKeys.welcome.tr(),
              style: const TextStyle(fontSize: 30),
            )),
          ),
          Positioned(
              top: size.height * .9,
              left: size.width * .12,
              child: button("next", () {}))
        ],
      ),
    );
  }
}
