import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outlook/constants.dart';

import 'components/pagestate.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageState(),
          SizedBox(
            width: double.infinity,
            height: 97,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 44,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -20),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("images/logo.svg"),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("Icons/notifications.svg"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
