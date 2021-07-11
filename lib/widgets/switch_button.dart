import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {


    @override
    SwitchWidgetClass createState() => new SwitchWidgetClass();
  }
 
class SwitchWidgetClass extends State {
 
  bool switchControl = false;
  var textHolder = 'OFF';
 
  void toggleSwitch(bool value) {
 
      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
          textHolder = '';
        });
        print('ON');
        // Put your code here which you want to execute on Switch ON event.
 
      }
      else
      {
        setState(() {
          switchControl = false;
           textHolder = 'OFF';
        });
        print('Switch is OFF');
        // Put your code here which you want to execute on Switch OFF event.
      }
  }
  
    @override
    Widget build(BuildContext context) {
      return Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ Transform.scale( 
              scale: 1.5,
              child: Switch(
              onChanged: toggleSwitch,
              value: switchControl,
              activeColor: Colors.amber,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            )
          ), 
 
        Text('$textHolder', style: TextStyle(fontSize: 24, color: Colors.white),)
 
      ]);
  }
}