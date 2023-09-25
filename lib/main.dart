import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

void main() {
  runApp(Aplication());
}

class Aplication extends StatelessWidget {
  const Aplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: Text('AmirAhmadAdibi'),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [_getHeader()],
      ),
    );
  }
  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/user.png'),
          radius: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'امیر احمدم یه برنامه نویس و معلم',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'عاشق برنامه نویسی موبایل و اندروید و فلاتر ، دوست داریم هرچیزی را که یاد میگیریم یاد بدیم',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12,),
        _getRowIcons()

      ],
    );

  }
  Widget _getRowIcons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}




