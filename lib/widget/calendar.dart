import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List _selectedEvents;
  Map<DateTime, List> _events;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();

    final _selectedDay = DateTime.now();
    var date1 = DateTime.parse('2020-03-31T00:00:00Z');
    var date2 = DateTime.parse('2020-03-29T00:00:00Z');

    _events = {
      date1: ['Event A6', 'Event B6'],
      _selectedDay: ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
      date2: ['Event A8', 'Event B8', 'Event C8', 'Event D8'],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events){
    setState(() {
      _selectedEvents = events;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        TableCalendar(
          calendarController: _calendarController,
          locale: 'en_US',
          initialCalendarFormat: CalendarFormat.month,
          formatAnimation: FormatAnimation.slide,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          events: _events,
          onDaySelected: _onDaySelected,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            centerHeaderTitle: true,
            titleTextBuilder: (date, locale){
              return DateFormat.yMMM(locale).format(date);
            },
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            dowTextBuilder: (date, locale){
              return DateFormat.E(locale).format(date);
            },
          ),
          builders: CalendarBuilders(
            markersBuilder: (context, date, events, holidays){
              final children = <Widget>[];

              if(events.isNotEmpty){
                children.add(
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: _buildEventsMarker(date, events),
                  )
                );
              }

              if(holidays.isNotEmpty){
                children.add(
                  Positioned(
                    right: -2,
                    top: -2,
                    child: _buildHolidaysMarker(),
                  )
                );
              }
              return children;
            }
          ),
        ),
        const SizedBox(height: 8.0,),
        Expanded(child: _buildEventList(),)
      ],
    );
  }

  Widget _buildEventList(){
    return ListView(
      children: _selectedEvents.map((event) =>
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.8),
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ListTile(
          title: Text(event.toString()),
          onTap: () => print('$event tapped!'),
        ),
      )).toList(),
    );
  }

  Widget _buildEventsMarker(DateTime date, List events){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: _calendarController.isSelected(date)
          ? Colors.brown[500]
            : _calendarController.isToday(date) ? Colors.brown[300] : Colors.blue[400],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text('${events.length}', style: TextStyle().copyWith(color: Colors.white, fontSize: 12.0),),
      ),
    );
  }

  Widget _buildHolidaysMarker() {
    return Icon(
      Icons.add_box,
      size: 20.0,
      color: Colors.blueGrey[800],
    );
  }
}
