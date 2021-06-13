import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:my_project1/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CalendarFormat format = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleSpacing: 10.0,
        title: Text('Leave & Attendance'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                accountName: Text('Amit Kumar'),
                accountEmail: Text('amitkumar@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Text('AK'),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(5),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 130.0,
                    child: Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: ListTile(
                              title: Text(
                                'Absent Days For Current & Last Month \n--------',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.home, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 142.0,
                    child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: ListTile(
                              title: Text(
                                'Leave & Regularization History \n--------',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 27),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.timer, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 130.0,
                    child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: ListTile(
                              title: Text(
                                'Time Report- Team \n--------',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 26),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child:
                                      Icon(Icons.contacts, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileTheme(
                  tileColor: Colors.blue,
                  child: ExpansionTile(
                    title: Text(
                      'My Calendar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    children: [
                      TableCalendar(
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(1990),
                        lastDay: DateTime(2050),
                        calendarFormat: format,
                        onFormatChanged: (CalendarFormat _format) {
                          setState(() {
                            format = _format;
                          });
                        },
                        headerStyle: HeaderStyle(
                            formatButtonVisible: false, titleCentered: true),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListTileTheme(
                tileColor: Colors.blue,
                child: ExpansionTile(
                  title: Text(
                    'Apply Leave',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              'CL/Contingency Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle:
                                Text('6.0 Remaining \nValid Till: 31/12/2021'),
                            trailing: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PageNew(),
                                  ),
                                );
                              },
                              child: Text('APPLY'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              'Optional Holiday',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle:
                                Text('3.0 Remaining \nValid Till: 31/12/2021'),
                            trailing: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PageNew(),
                                  ),
                                );
                              },
                              child: Text('APPLY'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              'Special Privilege Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle:
                                Text('10.0 Remaining \nValid Till: 31/12/2021'),
                            trailing: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PageNew(),
                                  ),
                                );
                              },
                              child: Text('APPLY'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            onTap: () => print('holidays'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListTileTheme(
                tileColor: Colors.blue,
                child: ExpansionTile(
                  title: Text(
                    'Holiday Calendar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              '15th August | Sun',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle: Text('Independance Day'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              '10th September | Fri',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle: Text('Ganesh Chaturti'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              '2nd October | Sat',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle: Text('Gandhi Jayanti'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTileTheme(
                          tileColor: Colors.white,
                          child: ListTile(
                            title: Text(
                              'See All Holidays',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20.0,
                              ),
                            ),
                            onTap: () => print('holidays'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
