import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPages extends StatelessWidget {
  const MainPages({Key? key}) : super(key: key);

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
                            onTap: ()=>{},
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
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
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
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '3',
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
                              'Практическое занятие',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                                '11:20-12:50',
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
                            'Электротехника и Схемотехника',
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
                            'Жук Александр Павлович',
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
                              '9-314',
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                            Text(
                                'ИНБ-б-о-20-1',
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
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '4',
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
                              'Лабораторная работа',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              '13:20-14:50',
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
                            'Информационные технологии',
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
                            'Гусева Татьяна Михайловна',
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
                              '9-311',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              'ИНБ-б-о-20-1',
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
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '5',
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
                              'Лабораторная работа',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              '15:00-16:30',
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
                            'Физические основы защиты информации',
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
                            'Лохов Вячеслав Иванович',
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
                              '9-512',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              'ИНБ-б-о-20-1',
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
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '5',
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
                            const Text(
                              'Лабораторная работа',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              '15:00-16:30',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Физические основы защиты информации',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Лохов Вячеслав Иванович',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '9-512',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              'ИНБ-б-о-20-1',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                          ],
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

