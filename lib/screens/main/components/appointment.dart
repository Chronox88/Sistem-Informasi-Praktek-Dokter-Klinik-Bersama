import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppointmentReqButton extends StatelessWidget {
  final String name;
  final String date;
  final String time;
  final String desc;
  final Function click;

  const AppointmentReqButton({
    Key key,
    this.name,
    this.date,
    this.time,
    this.desc,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: click,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  desc,
                  style: TextStyle(
                    color: desc.toLowerCase() == "sudah disetujui"
                        ? primaryColor
                        : Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
