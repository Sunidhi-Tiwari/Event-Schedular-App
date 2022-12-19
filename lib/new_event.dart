import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();


}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Event",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0, fontFamily: 'Georgia'),),
        centerTitle: true,
        backgroundColor:  Color(0xff5E61F4),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffCB2B9B),
              Color(0xff9546C4),
              Color(0xff5E61F4),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        ),


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,


                    children: [

                      TextField(
                        controller: _textEditingController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorHeight: 40.0,
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.calendar_month,
                            color: Colors.black,
                          ),
                          labelStyle: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 40.0, fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
                        ),
                      ),
                      SizedBox(height: 30.0),

                      Builder(
                        builder: (context) {
                          return ElevatedButton(onPressed: () {
                            String newEventText = _textEditingController.text;
                            Navigator.of(context).pop(newEventText);
                          }, child: Text('ADD',
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15.0 )),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith((states) {
                                if(states.contains(MaterialState.pressed))
                                  return Colors.black26;
                                else
                                  return Colors.white;
                              }),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              )

                            ),
                          );
                        }
                      ),
                    ],
                  ),


      ),



    );

  }
  
}