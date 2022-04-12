import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black87,
          ),
          brightness: Brightness.light,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.black87,
            )
          ],
        ),
        body: _bodyBuild(),
      ),
    );
  }
}

Widget _bodyBuild() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _WeatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _headerImage() {
  return Image(
    image: NetworkImage(
        'https://on-desktop.com/wps/2018Nature___Fields_Spikes_in_the_field_under_the_bright_rays_of_the_summer_sun_123398_.jpg'),
    fit: BoxFit.cover,
  );
}

Column _WeatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Вторник - Апрель 12",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        "Это какой-то текст о погоде, пусть он будет здесь. Он же вам не мешает, правильно? Думаю да, спасибо",
        style: TextStyle(color: Colors.black38),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.amber,
          ),
        ],
      ),
      SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "15 Ясно",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Москва",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10,
    children: List.generate(7, (int index) {
      return Chip(
        label: Text(
          '${index + 20} C',
          style: TextStyle(fontSize: 15),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
        size: 15,
      ),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        'Информация взята из topweathersite.ru',
        style: TextStyle(fontSize: 15),
      ),
      stars,
    ],
  );
}
