import 'package:flutter/material.dart';

void main() {
  runApp(WeatherReadApp());
}
class WeatherReadApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor:Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast',
          style: TextStyle(
            color: Colors.white),
          ),
        centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body:
        WidgetWeatherReadApp(),
      ),
    );
  }
}

Widget WidgetWeatherReadApp(){
  return SingleChildScrollView(

    child: Column(
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [

              ],
        ),
        SafeArea(
          child: Column(
              children: <Widget>[
                SizedBox(height: 26.0),
                _CityDetail(),
                SizedBox(height: 60.0),
                _TemperatureDetail(),
                SizedBox(height: 45.0,),
                _ExtraWeatherDetail(),
                SizedBox(height: 60.0),
                _TextBottomDatail(),

                _ListViewWidget()
              ],
            ),
        ),
      ],
    ),
  );
}
Column _CityDetail(){
  return Column(

    children:const <Widget> [
    Text('Ivanovskaya oblast, RU',
        style: TextStyle(
          color: Colors.white,
          fontSize: 35.0),
    ),
      SizedBox(height:15.0),
      Text('Friday, Mar 20, 2022',
      style:
      TextStyle(
        color: Colors.white,
          fontSize: 16.0
      ),
      ),
    ],
  );
}
Row _TemperatureDetail(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 90.0,
      ),
      SizedBox( width: 16.0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Row(
            children: const <Widget>[
              Text('15°F',
              style: TextStyle(
                color: Colors.white,
                fontSize: 55.0,),
              )
            ],
          ),
          Row(
            children:<Widget> [
              Text('LIGHT SNOW',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0
              ),
              )
            ],
          )
        ],
      )
    ],
  );
}
Row _ExtraWeatherDetail(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Column(
    children: const [
      Icon(Icons.ac_unit,
      color: Colors.white,
        size: 30.0,
      ),
      Text('5',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
      ),
      ),
      Text('km/hr',
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.white,
      ),
      ),

    ],
      ),
  SizedBox(width: 65.0),
        Column(
            children: const <Widget> [
            Icon(Icons.ac_unit,
        size: 30.0,
        color: Colors.white,),
            Text('3',
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white,
      ),
      ),
            Text('%',
                  style: TextStyle(
                    fontSize: 14.0,
                   color: Colors.white
      ),)
    ],
  ),
  SizedBox(width: 65.0),
  Column(
    children: [
      Icon(Icons.ac_unit,
      size: 30.0,
      color: Colors.white,),
      Text('20',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white
      ),
      ),
      Text('%',
        style: TextStyle(
        fontSize: 14.0,
        color: Colors.white
      ),)
    ],
  )
    ],
  );
}
Column _TextBottomDatail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const <Widget>[
      Text('7-DAY WEATHER FORECAST',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0
      ),)
    ],
  );
}
Widget _ListViewWidget(){
  return Container(
    padding:
    const EdgeInsets.only(left: 10.0,right: 10.0),
      height: 140,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BuildCard(),
        ],
  )
  );

         // child:
         // child: _tile(')
      //,
 // child:_tile('Tuesday', '15°F',Icons.sunny)
  //
 //
}
Widget BuildCard() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          width: 180,
        height: 90,
        color: Colors.white54,
        child: _tile('Saturday', '10°F', Icons.sunny)),
      SizedBox(width: 12),
      Container(
      width: 180,
        height: 90,
        color: Colors.white54,
      child: _tile('Sundey', '15°F',Icons.sunny)),
      SizedBox(width: 12),
      Container(
        width: 180,
        height: 90,
        color: Colors.white54,
          child: _tile('Monday', '10°F', Icons.sunny)
      ),
      SizedBox(width: 12),
      Container(
          width: 180,
        height: 90,
        color: Colors.white54,
          child:_tile('Tuesday', '15°F',Icons.sunny)),
      SizedBox(width: 12),
      Container(
          width: 180,
        height: 90,
        color: Colors.white54,
          child: _tile('Wednesday', '10°F', Icons.sunny)),
      SizedBox(width: 12),
      Container(
          width: 180,
        height: 90,
        color: Colors.white54,
        child: _tile('Thursday', '10°F', Icons.sunny)),
      SizedBox(width: 12),
      Container(
          width: 180,
        height: 90,
        color: Colors.white54,
          child: _tile('Friday', '10°F', Icons.sunny))
    ],
  );
}
Widget _tile ( String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
      style: TextStyle(
          color: Colors.white,
        fontSize: 17.0
      ),),
    subtitle: Text(subtitle,
    style: TextStyle(
      color: Colors.white,
      fontSize: 35.0
    ),),
    leading: Icon(icon,
      color: Colors.white,
      size: 30.0,
    ),
  );
}
