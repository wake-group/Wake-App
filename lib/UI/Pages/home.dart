import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wake/UI/widgets/widgets.dart';
import 'package:wake/translations/locale_keys.g.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool anyalarm = false;

    return Scaffold(
      body: anyalarm
          ? Container()
          : Container(
              child: Stack(
                children: [
                  Positioned(
                      top: size.height * .11,
                      left: size.width * .1,
                      child: Text(
                        LocaleKeys.start.tr(),
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      )),
                  Positioned(
                      top: size.height * .25,
                      child: SvgPicture.asset(
                        "assets/svgs/welcome.svg",
                        height: MediaQuery.of(context).size.height * .5,
                      )),
                  Positioned(
                      bottom: size.height * .06,
                      left: size.width * .12,
                      child: mybutton("", () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Home()));
                      }, size.width * .78))
                ],
              ),
            ),
    );
  }
}
