import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'appointment.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 32, 60, 32),
          child: Column(
            children: [
              Row(
                children: [
                  functionButton(
                    click: () {},
                    img: "icons/healthicons_medical-records-outline.svg",
                    text: "Rekam Medis",
                  ),
                  Spacer(),
                  functionButton(
                    click: () {},
                    img: "icons/healthicons_pharmacy.svg",
                    text: "Farmasi",
                  ),
                  Spacer(),
                  functionButton(
                    click: () {},
                    img: "icons/whh_appointment.svg",
                    text: "Janji Temu",
                    imgHeight: 63,
                    space: 6,
                  ),
                  Spacer(),
                  functionButton(
                    click: () {},
                    img: "icons/entypo_lab-flask.svg",
                    text: "Laboratorium",
                  ),
                  Spacer(),
                  functionButton(
                    click: () {},
                    img: "icons/ant-design_history-outlined.svg",
                    text: "Histori Pasien",
                    imgHeight: 63,
                    space: 10,
                  ),
                  Spacer(),
                  functionButton(
                    click: () {},
                    img: "icons/healthicons_clinical-fe.svg",
                    text: "Data Klinis",
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Divider(),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: 500,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Antrian Pasien",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 430,
                    child: VerticalDivider(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Permintaan Janji Temu",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        AppointmentReqButton(
                          name: "Paul Pogba",
                          date: "29 November 2021",
                          time: "7:30 AM",
                          desc: "Sudah Disetujui",
                          click: () {},
                        ),
                        AppointmentReqButton(
                          name: "Alexandre Jason",
                          date: "30 November 2021",
                          time: "7:00 AM",
                          desc: "Belum Disetujui",
                          click: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget functionButton({
    Function click,
    String img,
    String text,
    double imgHeight = 85,
    double space = 0,
  }) {
    return InkWell(
      onTap: click,
      child: Container(
        height: 150,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tertiaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  img,
                  height: imgHeight,
                ),
                SizedBox(
                  height: space,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
