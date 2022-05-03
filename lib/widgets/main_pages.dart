import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPages extends StatelessWidget {
  final a = 'dadaxon';
  MainPages({Key? key}) : super(key: key);
  Map<String, dynamic> data = jsonDecode("{\"currentWeekIndex\":12,\"weekdays\":[{\"Id\":1,\"WeekDay\":\"Среда\",\"Date\":\"2022-05-04T00:00:00\",\"Lessons\":[{\"Id\":1,\"LessonDayId\":1,\"TeacherId\":614618,\"RoomId\":1776,\"Discipline\":\"Биометрические способы идентификации\",\"TimeBegin\":\"2022-05-04T11:20:00\",\"TimeEnd\":\"2022-05-04T12:50:00\",\"Aud\":{\"Id\":1776,\"Name\":\"9-429\"},\"LessonType\":\"Лабораторная работа\",\"PairNumberStart\":3,\"PairNumberEnd\":3,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":614618,\"Name\":\"Орёл Дмитрий Викторович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":1,\"Subgroup\":\"(1)\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":2,\"LessonDayId\":1,\"TeacherId\":614618,\"RoomId\":2807,\"Discipline\":\"Биометрические способы идентификации\",\"TimeBegin\":\"2022-05-04T13:20:00\",\"TimeEnd\":\"2022-05-04T14:50:00\",\"Aud\":{\"Id\":2807,\"Name\":\"9-314\"},\"LessonType\":\"Практическое занятие\",\"PairNumberStart\":4,\"PairNumberEnd\":4,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":614618,\"Name\":\"Орёл Дмитрий Викторович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":2,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":3,\"LessonDayId\":1,\"TeacherId\":541114,\"RoomId\":1595,\"Discipline\":\"Теория и практика профессиональной коммуникации на русском языке\",\"TimeBegin\":\"2022-05-04T15:00:00\",\"TimeEnd\":\"2022-05-04T16:30:00\",\"Aud\":{\"Id\":1595,\"Name\":\"9-102А\"},\"LessonType\":\"Практическое занятие\",\"PairNumberStart\":5,\"PairNumberEnd\":5,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":541114,\"Name\":\"Протасова Наталия Владимировна\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":3,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":4,\"LessonDayId\":1,\"TeacherId\":30353,\"RoomId\":1589,\"Discipline\":\"Иностранный язык в сфере профессиональной коммуникации (английский язык)\",\"TimeBegin\":\"2022-05-04T16:50:00\",\"TimeEnd\":\"2022-05-04T18:20:00\",\"Aud\":{\"Id\":1589,\"Name\":\"9-432\"},\"LessonType\":\"Практическое занятие\",\"PairNumberStart\":6,\"PairNumberEnd\":6,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":30353,\"Name\":\"Лизенко Инна Игоревна\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":4,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"}]},{\"Id\":2,\"WeekDay\":\"Четверг\",\"Date\":\"2022-05-05T00:00:00\",\"Lessons\":[{\"Id\":5,\"LessonDayId\":2,\"TeacherId\":540582,\"RoomId\":5462,\"Discipline\":\"Электроника и схемотехника\",\"TimeBegin\":\"2022-05-05T09:40:00\",\"TimeEnd\":\"2022-05-05T11:10:00\",\"Aud\":{\"Id\":-1,\"Name\":\"ВКС\"},\"LessonType\":\"Лекция\",\"PairNumberStart\":2,\"PairNumberEnd\":2,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":540582,\"Name\":\"Жук Александр Павлович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":5,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":6,\"LessonDayId\":2,\"TeacherId\":540582,\"RoomId\":5462,\"Discipline\":\"Метрология, стандартизация и сертификация\",\"TimeBegin\":\"2022-05-05T11:20:00\",\"TimeEnd\":\"2022-05-05T12:50:00\",\"Aud\":{\"Id\":-1,\"Name\":\"ВКС\"},\"LessonType\":\"Лекция\",\"PairNumberStart\":3,\"PairNumberEnd\":3,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":540582,\"Name\":\"Жук Александр Павлович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":6,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":7,\"LessonDayId\":2,\"TeacherId\":38005,\"RoomId\":1637,\"Discipline\":\"Информационные технологии\",\"TimeBegin\":\"2022-05-05T16:50:00\",\"TimeEnd\":\"2022-05-05T18:20:00\",\"Aud\":{\"Id\":1637,\"Name\":\"9-302\"},\"LessonType\":\"Лабораторная работа\",\"PairNumberStart\":6,\"PairNumberEnd\":6,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":38005,\"Name\":\"Гусева Татьяна Михайловна\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":7,\"Subgroup\":\"(1)\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":8,\"LessonDayId\":2,\"TeacherId\":540582,\"RoomId\":1622,\"Discipline\":\"Метрология, стандартизация и сертификация\",\"TimeBegin\":\"2022-05-05T18:30:00\",\"TimeEnd\":\"2022-05-05T20:00:00\",\"Aud\":{\"Id\":1622,\"Name\":\"9-514\"},\"LessonType\":\"Лабораторная работа\",\"PairNumberStart\":7,\"PairNumberEnd\":7,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":540582,\"Name\":\"Жук Александр Павлович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":8,\"Subgroup\":\"(1)\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"}]},{\"Id\":3,\"WeekDay\":\"Пятница\",\"Date\":\"2022-05-06T00:00:00\",\"Lessons\":[{\"Id\":9,\"LessonDayId\":3,\"TeacherId\":540582,\"RoomId\":1708,\"Discipline\":\"Электроника и схемотехника\",\"TimeBegin\":\"2022-05-06T08:00:00\",\"TimeEnd\":\"2022-05-06T09:30:00\",\"Aud\":{\"Id\":1708,\"Name\":\"9-503\"},\"LessonType\":\"Практическое занятие\",\"PairNumberStart\":1,\"PairNumberEnd\":1,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":540582,\"Name\":\"Жук Александр Павлович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":9,\"Subgroup\":\"\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"},{\"Id\":10,\"LessonDayId\":3,\"TeacherId\":540863,\"RoomId\":1708,\"Discipline\":\"Физические основы защиты информации\",\"TimeBegin\":\"2022-05-06T09:40:00\",\"TimeEnd\":\"2022-05-06T11:10:00\",\"Aud\":{\"Id\":1708,\"Name\":\"9-503\"},\"LessonType\":\"Лабораторная работа\",\"PairNumberStart\":2,\"PairNumberEnd\":2,\"WeekDay\":null,\"SubGroups\":null,\"Teacher\":{\"Id\":540863,\"Name\":\"Лохов Вячеслав Иванович\"},\"AcademicGroup\":null,\"Groups\":[{\"LessonId\":10,\"Subgroup\":\"(1)\",\"Id\":15539,\"Name\":\"ИНБ-б-о-20-1\"}],\"Current\":false,\"LessonName\":\"пара\"}]}],\"weeks\":[{\"WeekType\":null,\"DateBegin\":\"2022-02-07T00:00:00\",\"DateEnd\":\"2022-02-13T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-02-14T00:00:00\",\"DateEnd\":\"2022-02-20T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-02-21T00:00:00\",\"DateEnd\":\"2022-02-27T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-02-28T00:00:00\",\"DateEnd\":\"2022-03-06T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-03-07T00:00:00\",\"DateEnd\":\"2022-03-13T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-03-14T00:00:00\",\"DateEnd\":\"2022-03-20T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-03-21T00:00:00\",\"DateEnd\":\"2022-03-27T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-03-28T00:00:00\",\"DateEnd\":\"2022-04-03T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-04-04T00:00:00\",\"DateEnd\":\"2022-04-10T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-04-11T00:00:00\",\"DateEnd\":\"2022-04-17T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-04-18T00:00:00\",\"DateEnd\":\"2022-04-24T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-04-25T00:00:00\",\"DateEnd\":\"2022-05-01T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-05-02T00:00:00\",\"DateEnd\":\"2022-05-08T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-05-09T00:00:00\",\"DateEnd\":\"2022-05-15T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-05-16T00:00:00\",\"DateEnd\":\"2022-05-22T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-05-23T00:00:00\",\"DateEnd\":\"2022-05-29T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-05-30T00:00:00\",\"DateEnd\":\"2022-06-05T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-06-06T00:00:00\",\"DateEnd\":\"2022-06-12T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-06-13T00:00:00\",\"DateEnd\":\"2022-06-19T00:00:00\",\"Number\":2},{\"WeekType\":null,\"DateBegin\":\"2022-06-20T00:00:00\",\"DateEnd\":\"2022-06-26T00:00:00\",\"Number\":1},{\"WeekType\":null,\"DateBegin\":\"2022-06-27T00:00:00\",\"DateEnd\":\"2022-07-03T00:00:00\",\"Number\":2}],\"Model\":{\"ForLabel\":\"\",\"Name\":\"\",\"Id\":706011,\"WeekDoubled\":true,\"ScheduleExist\":true,\"PersonalSchedule\":true,\"Title\":\"Ваше расписание занятий \",\"PageTitle\":\"Расписание занятий\",\"Type\":4}}");
  Map<String, dynamic> getSchedule(int day){
    return data["weekdays"][day];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
              elevation: 0,
            leading:Builder(
              builder: (context) => IconButton(
          icon: Icon(Icons.sort,color: Colors.black,),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    ),
            ),
            backgroundColor: Colors.white10,
          centerTitle: true,
          title: Text('eCampus',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
          actions: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: InkResponse(
                   radius: 20,
                   onTap: ()=>{},
                     child: Icon(Icons.notifications_none_outlined   ,size: 28,color: Colors.black,)
                 ),
          ),
          ],
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top:5,left: 13,right: 13),
            child: Column(
              children: [
                // SizedBox(height: 20,),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage('assets/photo_2020-10-14_15-35-30.jpg'),fit: BoxFit.cover)
                ),
                ),
                // SizedBox(height: 20,),
                Text(
                  'Тургунбоев Дадахон',
                  style: TextStyle(
                  fontSize: 17,
                  color: Colors.blue.shade400
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InkResponse(
                            radius: 20,
                            onTap: ()=>{
                            },
                            child: Icon(Icons.stars_outlined,)
                        ),
                        Text('100'),
                        Text('Средний балл')
                      ],
                    ),
                    Column(
                      children: [
                        InkResponse(
                            radius: 20,
                            onTap: ()=>{},
                            child: Icon(Icons.airplay_sharp,)
                        ),
                        Text('1 из 25'),
                        Text('Место в группе')
                      ],
                    ),
                    Column(
                      children: [
                        InkResponse(
                            radius: 20,
                            onTap: ()=>{},
                            child: Icon(Icons.account_balance,)
                        ),
                        Text('10 из 1092'),
                        Container(
                          child: Text('Место в Ин..',maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text(
                    'ЭЛЕКТРОННЫЙ ПРОПУСК',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('Расписание',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w400),),
                        SizedBox(height: 8,),
                        Column(
                          children: List<Widget>.from(getSchedule(0)["Lessons"].map((e)=> ScheduleItem(data: e))),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top
    ),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    padding:  const EdgeInsets.all(0),
    child: Wrap(
      runSpacing: 0,
      children: [
        Container(
          width: double.infinity,
          height: 165,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15,),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage('assets/photo_2020-10-14_15-35-30.jpg'),fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.settings_input_svideo_rounded,color: Colors.white,),
                    SizedBox(width: 15,),
                    Text('Тургунбоев Дадахон',style: TextStyle(color: Colors.white,fontSize: 17),)
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 15,left: 15),
              )
            ],
          ),
        ),

        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Расписание'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.stars_outlined),
          title: const Text('Предметы'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Рейтинг'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Зачетная книжка'),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),
        SizedBox(width: 15,),
        Text('Сервисы',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Статистика'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.stars_outlined),
          title: const Text('Мои предподователи'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.wifi),
          title: const Text('Wi-Fi'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Карта корпусов'),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),
        SizedBox(width: 15,),
        Text('О приложении',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey)),
        ListTile(
          leading: const Icon(Icons.stars_outlined),
          title: const Text('Сообщить о проблеме'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Поделиться'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home_max_outlined),
          title: const Text('Оценить'),
          onTap: (){},
        ),
      ],
    ),
  );
}

class ScheduleItem extends StatelessWidget {
  final data;
  const ScheduleItem({Key? key, required this.data}) : super(key: key);

  String getLessonDuration(String start, String end){
    return start.substring(11, 16)+"-"+end.substring(11, 16);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      child: Column(
        children: [

          //start
          SizedBox(height: 8,),
          Row(
            children: [
              Container(
                child: Text(
                  data['PairNumberStart'].toString(),
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
              SizedBox(width: 10,),
              Text(
                data['LessonType'].toString(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              Expanded(child: Container()),
              Text(
                getLessonDuration(data['TimeBegin'], data['TimeEnd']),
                style: TextStyle(
                    fontSize: 15
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
                data['Discipline'],
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17
              ),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              data['Teacher']['Name'],
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17
              ),
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data['Aud']['Name'],
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              Text(
                data['Groups'][0]["Name"],
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Container(
            width: 300,
            height: 1,
            color: Colors.grey,
          ),
          //end
        ],
      ),
    );
  }
}


