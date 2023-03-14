import 'package:flutter/cupertino.dart';
import 'package:trip/color.dart';

class Responsive_Button extends StatelessWidget {
  bool? isResponsive;
  double? width;
  Responsive_Button({Key? key,this.width,this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        margin: EdgeInsets.only(right: 70),
        width: width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.mainColor
        ),

          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("img/button-one.png")
            ],
          ),

      ),
    );
  }
}
