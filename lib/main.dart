import 'package:date_/pages/booking_calendar.dart';
import 'package:date_/pages/booking_calendar2.dart';
import 'package:date_/pages/calender.dart';
import 'package:date_/pages/calender_view.dart';
import 'package:date_/pages/flutter_week_view.dart';
import 'package:date_/pages/table_complex_example.dart';
import 'package:date_/pages/table_events_example.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  print(DateTime.now());
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Calender()),
                  );
                },
                child: Text("Basit")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableComplexExample()),
                  );
                },
                child: Text("Kompleks")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TableEventsExample()),
                  );
                },
                child: Text("Events")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingCalendarDemoApp()),
                  );
                },
                child: Text("Booking Calender paketi")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingCalendarDemoApp2()),
                  );
                },
                child: Text("Booking Calender paketi2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FlutterWeekViewDemoApp()),
                  );
                },
                child: Text("Flutter Week View paketi")),
          ],
        ),
      ),
    );
  }
}
