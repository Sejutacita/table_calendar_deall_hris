// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'pages/basics_example.dart';
import 'pages/complex_example.dart';
import 'pages/events_example.dart';
import 'pages/multi_example.dart';
import 'pages/range_example.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableCalendar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableCalendar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Basics'),
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => TableBasicsExample()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Range Selection'),
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => TableRangeExample()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Events'),
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => TableEventsExample()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Multiple Selection'),
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => TableMultiExample()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Complex'),
              onPressed: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => TableComplexExample()),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
