import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outlook/screens/main/components/beranda.dart';

import '../../../constants.dart';

class PageState extends StatefulWidget {
  const PageState({
    Key key,
  }) : super(key: key);

  @override
  _PageStateState createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  int page;
  @override
  void initState() {
    page = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 97),
      child: Row(
        children: [
          Container(
            width: 320,
            color: secondaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 32,
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("images/avatardokter.png"),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "dr. John Smith",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 12, 20, 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: primaryColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "Icons/grommet-icons_status-good.svg",
                              height: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Status: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Text(
                              "Aktif",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: primaryColor,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "Icons/jam_medical.svg",
                              height: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Dokter Spesialis Jantung",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Divider(
                          color: primaryColor,
                          thickness: 1,
                        ),
                        Text(
                          "Bergabung sejak 3 April 2021",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                menuButton(
                  icon: "Icons/ic_baseline-home.svg",
                  text: "Beranda",
                  change: () {
                    setState(() {
                      page = 1;
                    });
                  },
                  id: 1,
                ),
                menuButton(
                  icon: "Icons/fluent_presence-away-16-filled.svg",
                  text: "Absensi",
                  change: () {
                    setState(() {
                      page = 2;
                    });
                  },
                  id: 2,
                ),
                menuButton(
                  icon: "Icons/bi_chat-left-dots-fill.svg",
                  text: "Chat",
                  change: () {
                    setState(() {
                      page = 3;
                    });
                  },
                  id: 3,
                ),
                menuButton(
                  icon: "Icons/ci_settings-filled.svg",
                  text: "Pengaturan",
                  change: () {
                    setState(() {
                      page = 4;
                    });
                  },
                  id: 4,
                ),
              ],
            ),
          ),
          page == 1 ? Beranda() : Container(),
        ],
      ),
    );
  }

  InkWell menuButton({
    String icon,
    String text,
    Function change,
    int id,
  }) {
    return InkWell(
      onTap: change,
      child: Container(
        child: Row(
          children: [
            Container(
              height: 56,
              width: 6,
              decoration: BoxDecoration(
                color: page == id ? primaryColor : Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            SvgPicture.asset(
              icon,
              height: id == 2 || id == 3 ? 20 : 24,
              color: page == id ? primaryColor : Colors.black,
            ),
            SizedBox(
              width: id == 2 || id == 3 ? 14 : 12,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: page == id ? primaryColor : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
