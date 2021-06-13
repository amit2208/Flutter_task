import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PageNew extends StatefulWidget {
  @override
  _PageNewState createState() => _PageNewState();
}

class _PageNewState extends State<PageNew> {
  CalendarFormat format = CalendarFormat.month;
  var waterCheckboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            ListTile(
              title: Text(
                'Leave & Attendance',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              subtitle: Text(
                'Apply Leave',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 70,
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Apply Leave',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 372,
                child: Card(
                  child: TableCalendar(
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
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 372,
                child: Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'From Date*',
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      '14/06/2021',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 372,
                child: Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'To Date*',
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      '14/06/2021',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 372,
                child: Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'Type of Leave',
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      'CL/Contigency Leave',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    trailing: Icon(Icons.arrow_drop_down,
                        color: Colors.blue, size: 40.0),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: waterCheckboxValue,
                    onChanged: (value) {
                      waterCheckboxValue = !waterCheckboxValue;
                      setState(() {});
                    },
                  ),
                  Text(
                    'Apply For Half-Day',
                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                  ),
                ],
              ),
              Container(
                width: 372,
                child: Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'Reason',
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      'Select Reason',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    trailing: Icon(Icons.arrow_drop_down,
                        color: Colors.blue, size: 40.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 372,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonTheme(
                      minWidth: 180.0,
                      height: 40,
                      child: FlatButton(
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        color: Colors.white,
                        textColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 180.0,
                      height: 40,
                      child: FlatButton(
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        color: Colors.grey,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
