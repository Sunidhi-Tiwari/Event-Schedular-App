import 'package:event_schedular/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<String> _list = [
    "Event 1"
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Schedular',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0)),
          centerTitle: true,
          backgroundColor:  Color(0xff5E61F4),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffCB2B9B),
              Color(0xff9546C4),
              Color(0xff5E61F4),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
          child: ListView.builder(
            itemCount: _list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 30.0, 30.0, 40.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),


                    ),

                    child: Text(_list[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        height: 1.2,
                      )
                    ),
                  ),
                );

                },
              ),
        ),

        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(newText);
                });

              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xffCB2B9B),
            );
          }
        ),
      ),
    );
  }
}
