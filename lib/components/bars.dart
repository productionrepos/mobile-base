import 'package:flutter/material.dart';

class ApplicationBars extends StatelessWidget {
  const ApplicationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFF009B78),
        centerTitle: false,
        title: Text("Hamburguesa"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * .05,
          ),
          AppBar(
            elevation: 2,
            backgroundColor: Color(0xFFFFFFFF),
            title: Text(
              "Hamburguesa",
              style: TextStyle(color: Color(0xFF787777)),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xFF787777),
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Color(0xFF787777),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: Color(0xFF787777),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Color(0xFF787777),
              )
            ],
          ),
          SizedBox(
            height: size.height * .05,
          ),
          AppBar(
            elevation: 2,
            backgroundColor: Color(0xFF009B78),
            centerTitle: false,
            title: Text("Volver"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(
            height: size.height * .05,
          ),
          AppBar(
            elevation: 2,
            backgroundColor: Color(0xFFFFFFFF),
            title: Text(
              "Seleccionar",
              style: TextStyle(color: Color(0xFF787777)),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Color(0xFF787777),
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share),
                color: Color(0xFF787777),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Color(0xFF787777),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Color(0xFF787777),
              )
            ],
          ),
          SizedBox(
            height: size.height * .05,
          ),
          AppBar(
            elevation: 2,
            backgroundColor: Color(0xFF009B78),
            centerTitle: false,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
        ],
      ),
    );
  }
}
