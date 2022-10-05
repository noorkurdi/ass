
import 'package:flutter/material.dart';

class My_Drop extends StatefulWidget {
  const My_Drop({Key? key}) : super(key: key);

  @override
  _My_DropState createState() => _My_DropState();
}

class _My_DropState extends State<My_Drop> {
  List<String> items =['Travel','Work','Movies','Study','Homework','Thoughts'];
  // String ? selectedItem = 'Choose Object';
String? value;
  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: Row(
          
          children: [
            Text('Chose Object:',style: TextStyle(color: Colors.purple[200],
            fontSize: 15),),
            const SizedBox(width: 8,),
            DropdownButton<String>(
              value: value ,
              hint:Text('Opject',style: TextStyle(color: Colors.purple[200])) ,
              borderRadius: BorderRadius.circular(15),
              items: items.map(buildMenuItem).toList(),
              onChanged: (value)=>setState(() =>this.value=value),
              ),
          ],
        ),
          );
      
  }
  DropdownMenuItem<String> buildMenuItem(String item)=>
  DropdownMenuItem(
    value: item,
   child: Text(item,
     style: TextStyle(fontSize: 15, color: Colors.purple[200]),),
  ); 
}
