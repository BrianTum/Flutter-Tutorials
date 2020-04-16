import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
   String location; // location name for that ui
   String time; // time in that location
   String flag; // url to a asset flag icon
   String url; // location url for api endpoint
   bool isTime; // true or not

   // defining th constructor
   WorldTime({this.location, this.flag, this.url});

   Future <void> getTime() async{

     try{
       //get the Datetime object
       DateTime now = DateTime.now();
       // print(now);
       // now.add(Duration(hours: int.parse(offset)));

       // set the time property
       isTime = now.hour > 6 && now.hour < 19 ? true : false;
       time = DateFormat.jm().format(now);
       // print(time);

     }catch (e){
       print('there was an error: $e');
       time = 'could not get time data';
     }
   }
}
