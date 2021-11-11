import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getRoundButton(size, Colors.white, Color(0xFF787777)),
              getRoundButton(size, Color(0xFF009B78), Colors.white),
              getRoundButton(size, Color(0xFFFDD807), Colors.white),
              getRoundButton(size, Color(0xFF272726), Colors.white),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getOutlinedButton(size, Colors.white, Color(0xFF787777)),
              getOutlinedButton(size, Color(0xFF009B78), Color(0xFF009B78)),
              getOutlinedButton(size, Color(0xFFFDD807), Color(0xFFFDD807)),
              getOutlinedButton(size, Color(0xFF272726), Color(0xFF272726)),
            ],
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getSquaredButton(size, Colors.white, Color(0xFF787777)),
              getSquaredButton(size, Color(0xFF009B78), Colors.white),
              getSquaredButton(size, Color(0xFFFDD807), Colors.white),
              getSquaredButton(size, Color(0xFF272726), Colors.white),
            ],
          ),
          SizedBox(
            height: size.height * .05,
          ),
          getButtonLeadingIcon(size, Colors.black, Colors.white),
          getButtonLeadingIcon(size, Colors.white, Color(0xFF009B78)),
          getButtonTrailingIcon(size, Colors.black, Colors.white),
          getButtonTrailingIcon(size, Colors.white, Color(0xFF009B78)),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF009B78)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(size.width * .75, size.height * .07))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Container Button",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )),
          SizedBox(
            height: size.height * .03,
          )
        ],
      ),
    );
  }

  Widget getRoundButton(Size size, Color background, Color inside) {
    return Container(
      width: size.width * .1,
      height: size.height * .1,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Color(0xFFCBD4C2), blurRadius: 5.0)],
          color: background),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add,
          size: 30,
        ),
        color: inside,
      ),
    );
  }

  Widget getOutlinedButton(Size size, Color colorBorder, Color inside) {
    return Container(
      width: size.width * .1,
      height: size.height * .06,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(color: Color(0xFFCBD4C2), blurRadius: 5.0)],
          color: Colors.white,
          border: Border.all(color: colorBorder),
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.edit_outlined,
          size: 25,
        ),
        color: inside,
      ),
    );
  }

  Widget getSquaredButton(Size size, Color background, Color inside) {
    return Container(
      width: size.width * .1,
      height: size.height * .06,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(color: Color(0xFFCBD4C2), blurRadius: 5.0)],
          color: background,
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.edit_outlined,
          size: 25,
        ),
        color: inside,
      ),
    );
  }

  Widget getButtonLeadingIcon(Size size, Color colorText, Color background) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            backgroundColor: MaterialStateProperty.all<Color>(background),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
            fixedSize: MaterialStateProperty.all<Size>(
                Size(size.width * .75, size.height * .07))),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                Icons.arrow_back,
                color: colorText,
              ),
            ),
            SizedBox(
              width: size.width * .1,
            ),
            Expanded(
                flex: 8,
                child: Text(
                  "Container Button",
                  style: TextStyle(color: colorText, fontSize: 20),
                ))
          ],
        ));
  }

  Widget getButtonTrailingIcon(Size size, Color colorText, Color background) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            backgroundColor: MaterialStateProperty.all<Color>(background),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
            fixedSize: MaterialStateProperty.all<Size>(
                Size(size.width * .75, size.height * .07))),
        child: Row(
          children: [
            SizedBox(
              width: size.width * .1,
            ),
            Expanded(
                flex: 8,
                child: Text(
                  "Container Button",
                  style: TextStyle(color: colorText, fontSize: 20),
                )),
            SizedBox(
              width: size.width * .1,
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.arrow_forward,
                color: colorText,
              ),
            ),
          ],
        ));
  }
}
