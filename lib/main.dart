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
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'عاشق برنامه نویسی موبایل و اندروید و فلاتر ، دوست داریم هرچیزی را که یاد میگیریم یاد بدیم',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        _getRowIcons(),
        SizedBox(
          height: 12,
        ),
        _getSkillCard(),
        SizedBox(
          height: 12,
        ),
        _getResume(),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          _getHistoryColumn(),
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var list = [
      'برنامه نویسی اندروید زرین پال از سال 97',
      'هشت ترم ورکشاب عملی اندروید دانشگاه تهران',
      'چنل آموزشی یوتیوب از سال 2017',
      'مدرس دوره اندروید هاروارد (Iran cs50x)',
      'مدرس دوره اندروید از سال 93',
      'مدرس و بنیان گذار سایت ExpertFlutter',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in list)
          Text(
            title,
            textDirection: TextDirection.rtl,
          ),
      ],
    );
  }

  Widget _getSkillCard() {
    var list = ['flutter', 'android', 'kotlin', 'java', 'dart'];
    return Wrap(
      children: [
        for (var slill in list)
          Card(
            elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image(
                    image: AssetImage('images/$slill.png'),
                    width: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$slill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getRowIcons() {
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
