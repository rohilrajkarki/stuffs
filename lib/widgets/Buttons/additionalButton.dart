import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdditionalButtons extends StatelessWidget {
  const AdditionalButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 60,
          child: Card(
            // elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                width: 2,
                color: Colors.white24,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/google.svg",
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Register with Google",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
