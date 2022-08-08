library event_calendar;

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Meetings/appointment_editor.dart';
import 'package:flutter_auth/model/meetings.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'data_source.dart';


class EventCalendar extends StatefulWidget {

  @override
  EventCalendarState createState() => EventCalendarState();
}

List<Color> colorCollection = <Color>[];
List<String> colorNames = <String>[];
int selectedColorIndex = 0;
int selectedTimeZoneIndex = 0;
List<String> timeZoneCollection = <String>[];
DataSource events;
Meeting selectedAppointment;
DateTime startDate;
TimeOfDay startTime;
DateTime endDate;
TimeOfDay endTime;
bool isAllDay = false;
String subject = '';
String notes = '';

class EventCalendarState extends State<EventCalendar> {
  EventCalendarState();

  CalendarView _calendarView = CalendarView.month;
  List<String> eventNameCollection;
  List<Meeting> appointments;

  @override
  void initState() {
    _calendarView = CalendarView.month;
    appointments = getMeetingDetails();
    events = DataSource(appointments);
    selectedAppointment = null;
    selectedColorIndex = 0;
    selectedTimeZoneIndex = 0;
    subject = '';
    notes = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shedule'),
      ),
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
            child: getEventCalendar(_calendarView, events, onCalendarTapped)));
  }

  SfCalendar getEventCalendar(
      CalendarView _calendarView,
      CalendarDataSource _calendarDataSource,
      CalendarTapCallback calendarTapCallback) {
    return SfCalendar(
        view: _calendarView,
        dataSource: _calendarDataSource,
        onTap: calendarTapCallback,
        initialDisplayDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 0, 0, 0),
        monthViewSettings: MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
        timeSlotViewSettings: TimeSlotViewSettings(
            minimumAppointmentDuration: const Duration(minutes: 60)));
  }

  void onCalendarViewChange(String value) {
    if (value == 'Day') {
      _calendarView = CalendarView.day;
    } else if (value == 'Week') {
      _calendarView = CalendarView.week;
    } else if (value == 'Work week') {
      _calendarView = CalendarView.workWeek;
    } else if (value == 'Month') {
      _calendarView = CalendarView.month;
    } else if (value == 'Timeline day') {
      _calendarView = CalendarView.timelineDay;
    } else if (value == 'Timeline week') {
      _calendarView = CalendarView.timelineWeek;
    } else if (value == 'Timeline work week') {
      _calendarView = CalendarView.timelineWorkWeek;
    }

    setState(() {});
  }

  void onCalendarTapped(CalendarTapDetails calendarTapDetails) {
    if (calendarTapDetails.targetElement != CalendarElement.calendarCell &&
        calendarTapDetails.targetElement != CalendarElement.appointment) {
      return;
    }

    setState(() {
      selectedAppointment = null;
      isAllDay = false;
      selectedColorIndex = 0;
      selectedTimeZoneIndex = 0;
      subject = '';
      notes = '';
      if (_calendarView == CalendarView.month) {
        _calendarView = CalendarView.day;
      } else {
        if (calendarTapDetails.appointments != null &&
            calendarTapDetails.appointments.length == 1) {
          final Meeting meetingDetails = calendarTapDetails.appointments[0];
          startDate = meetingDetails.from;
          endDate = meetingDetails.to;
          isAllDay = meetingDetails.isAllDay;
          selectedColorIndex =
              colorCollection.indexOf(meetingDetails.background);
          selectedTimeZoneIndex = meetingDetails.startTimeZone == ''
              ? 0
              : timeZoneCollection.indexOf(meetingDetails.startTimeZone);
          subject = meetingDetails.eventName == '(No title)'
              ? ''
              : meetingDetails.eventName;
          notes = meetingDetails.description;
          selectedAppointment = meetingDetails;
        } else {
          final DateTime date = calendarTapDetails.date;
          startDate = date;
          endDate = date.add(const Duration(hours: 1));
        }
        startTime =
            TimeOfDay(hour: startDate.hour, minute: startDate.minute);
        endTime = TimeOfDay(hour: endDate.hour, minute: endDate.minute);
        Navigator.push<Widget>(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => AppointmentEditor()),
        );
      }
    });
  }

  List<Meeting> getMeetingDetails() {
    final List<Meeting> meetingCollection = <Meeting>[];
    eventNameCollection = <String>[];
    eventNameCollection.add('General Meeting');
    eventNameCollection.add('Plan Execution');
    eventNameCollection.add('Project Plan');
    eventNameCollection.add('Consulting');
    eventNameCollection.add('Support');
    eventNameCollection.add('Development Meeting');
    eventNameCollection.add('Scrum');
    eventNameCollection.add('Project Completion');
    eventNameCollection.add('Release updates');
    eventNameCollection.add('Performance Check');

    colorCollection = <Color>[];
    colorCollection.add(const Color(0xFF0F8644));
    colorCollection.add(const Color(0xFF8B1FA9));
    colorCollection.add(const Color(0xFFD20100));
    colorCollection.add(const Color(0xFFFC571D));
    colorCollection.add(const Color(0xFF85461E));
    colorCollection.add(const Color(0xFFFF00FF));
    colorCollection.add(const Color(0xFF3D4FB5));
    colorCollection.add(const Color(0xFFE47C73));
    colorCollection.add(const Color(0xFF636363));

    colorNames = <String>[];
    colorNames.add('Green');
    colorNames.add('Purple');
    colorNames.add('Red');
    colorNames.add('Orange');
    colorNames.add('Caramel');
    colorNames.add('Magenta');
    colorNames.add('Blue');
    colorNames.add('Peach');
    colorNames.add('Gray');

    timeZoneCollection = <String>[];
    timeZoneCollection.add('Default Time');
    timeZoneCollection.add('AUS Central Standard Time');
    timeZoneCollection.add('AUS Eastern Standard Time');
    timeZoneCollection.add('Afghanistan Standard Time');
    timeZoneCollection.add('Alaskan Standard Time');
    timeZoneCollection.add('Arab Standard Time');
    timeZoneCollection.add('Arabian Standard Time');
    timeZoneCollection.add('Arabic Standard Time');
    timeZoneCollection.add('Argentina Standard Time');
    timeZoneCollection.add('Atlantic Standard Time');
    timeZoneCollection.add('Azerbaijan Standard Time');
    timeZoneCollection.add('Azores Standard Time');
    timeZoneCollection.add('Bahia Standard Time');
    timeZoneCollection.add('Bangladesh Standard Time');
    timeZoneCollection.add('Belarus Standard Time');
    timeZoneCollection.add('Canada Central Standard Time');
    timeZoneCollection.add('Cape Verde Standard Time');
    timeZoneCollection.add('Caucasus Standard Time');
    timeZoneCollection.add('Cen. Australia Standard Time');
    timeZoneCollection.add('Central America Standard Time');
    timeZoneCollection.add('Central Asia Standard Time');
    timeZoneCollection.add('Central Brazilian Standard Time');
    timeZoneCollection.add('Central Europe Standard Time');
    timeZoneCollection.add('Central European Standard Time');
    timeZoneCollection.add('Central Pacific Standard Time');
    timeZoneCollection.add('Central Standard Time');
    timeZoneCollection.add('China Standard Time');
    timeZoneCollection.add('Dateline Standard Time');
    timeZoneCollection.add('E. Africa Standard Time');
    timeZoneCollection.add('E. Australia Standard Time');
    timeZoneCollection.add('E. South America Standard Time');
    timeZoneCollection.add('Eastern Standard Time');
    timeZoneCollection.add('Egypt Standard Time');
    timeZoneCollection.add('Ekaterinburg Standard Time');
    timeZoneCollection.add('FLE Standard Time');
    timeZoneCollection.add('Fiji Standard Time');
    timeZoneCollection.add('GMT Standard Time');
    timeZoneCollection.add('GTB Standard Time');
    timeZoneCollection.add('Georgian Standard Time');
    timeZoneCollection.add('Greenland Standard Time');
    timeZoneCollection.add('Greenwich Standard Time');
    timeZoneCollection.add('Hawaiian Standard Time');
    timeZoneCollection.add('India Standard Time');
    timeZoneCollection.add('Iran Standard Time');
    timeZoneCollection.add('Israel Standard Time');
    timeZoneCollection.add('Jordan Standard Time');
    timeZoneCollection.add('Kaliningrad Standard Time');
    timeZoneCollection.add('Korea Standard Time');
    timeZoneCollection.add('Libya Standard Time');
    timeZoneCollection.add('Line Islands Standard Time');
    timeZoneCollection.add('Magadan Standard Time');
    timeZoneCollection.add('Mauritius Standard Time');
    timeZoneCollection.add('Middle East Standard Time');
    timeZoneCollection.add('Montevideo Standard Time');
    timeZoneCollection.add('Morocco Standard Time');
    timeZoneCollection.add('Mountain Standard Time');
    timeZoneCollection.add('Mountain Standard Time (Mexico)');
    timeZoneCollection.add('Myanmar Standard Time');
    timeZoneCollection.add('N. Central Asia Standard Time');
    timeZoneCollection.add('Namibia Standard Time');
    timeZoneCollection.add('Nepal Standard Time');
    timeZoneCollection.add('New Zealand Standard Time');
    timeZoneCollection.add('Newfoundland Standard Time');
    timeZoneCollection.add('North Asia East Standard Time');
    timeZoneCollection.add('North Asia Standard Time');
    timeZoneCollection.add('Pacific SA Standard Time');
    timeZoneCollection.add('Pacific Standard Time');
    timeZoneCollection.add('Pacific Standard Time (Mexico)');
    timeZoneCollection.add('Pakistan Standard Time');
    timeZoneCollection.add('Paraguay Standard Time');
    timeZoneCollection.add('Romance Standard Time');
    timeZoneCollection.add('Russia Time Zone 10');
    timeZoneCollection.add('Russia Time Zone 11');
    timeZoneCollection.add('Russia Time Zone 3');
    timeZoneCollection.add('Russian Standard Time');
    timeZoneCollection.add('SA Eastern Standard Time');
    timeZoneCollection.add('SA Pacific Standard Time');
    timeZoneCollection.add('SA Western Standard Time');
    timeZoneCollection.add('SE Asia Standard Time');
    timeZoneCollection.add('Samoa Standard Time');
    timeZoneCollection.add('Singapore Standard Time');
    timeZoneCollection.add('South Africa Standard Time');
    timeZoneCollection.add('Sri Lanka Standard Time');
    timeZoneCollection.add('Syria Standard Time');
    timeZoneCollection.add('Taipei Standard Time');
    timeZoneCollection.add('Tasmania Standard Time');
    timeZoneCollection.add('Tokyo Standard Time');
    timeZoneCollection.add('Tonga Standard Time');
    timeZoneCollection.add('Turkey Standard Time');
    timeZoneCollection.add('US Eastern Standard Time');
    timeZoneCollection.add('US Mountain Standard Time');
    timeZoneCollection.add('UTC');
    timeZoneCollection.add('UTC+12');
    timeZoneCollection.add('UTC-02');
    timeZoneCollection.add('UTC-11');
    timeZoneCollection.add('Ulaanbaatar Standard Time');
    timeZoneCollection.add('Venezuela Standard Time');
    timeZoneCollection.add('Vladivostok Standard Time');
    timeZoneCollection.add('W. Australia Standard Time');
    timeZoneCollection.add('W. Central Africa Standard Time');
    timeZoneCollection.add('W. Europe Standard Time');
    timeZoneCollection.add('West Asia Standard Time');
    timeZoneCollection.add('West Pacific Standard Time');
    timeZoneCollection.add('Yakutsk Standard Time');

    final DateTime today = DateTime.now();
    final Random random = Random();
    for (int month = -1; month < 2; month++) {
      for (int day = -5; day < 5; day++) {
        for (int hour = 9; hour < 18; hour += 5) {
          meetingCollection.add(Meeting(
            from: today
                .add(Duration(days: (month * 30) + day))
                .add(Duration(hours: hour)),
            to: today
                .add(Duration(days: (month * 30) + day))
                .add(Duration(hours: hour + 2)),
            background: colorCollection[random.nextInt(9)],
            startTimeZone: '',
            endTimeZone: '',
            description: '',
            isAllDay: false,
            eventName: eventNameCollection[random.nextInt(7)],
          ));
        }
      }
    }

    return meetingCollection;
  }
}
