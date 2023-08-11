     import 'package:flutter/material.dart';

void main(){
      runApp(counter_app());   

     }
     class counter_app extends StatefulWidget {
   counter_app({super.key});

  @override
  State<counter_app> createState() => _counter_appState();
}

class _counter_appState extends State<counter_app> {
   int teamApoints =0;

   int teamBpoints =0;

  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title:Text ('Points Counter'),
          ),
          body: 
             Column(
               children: [
                Spacer(flex: 1,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:18.0),
                          child: Text(
                            'Team A',
                          style: TextStyle(
                            fontSize: 28
                          ),
                          ),
                        ),
                        Text(
                          '$teamApoints',
                          style: TextStyle(
                            fontSize: 100
                          ),
                          ),
                          ElevatedButton(onPressed: (){
                                    
                                    setState(() {
                                      teamApoints++;
                                    });
                            print(teamApoints);
                          }, child: Text('Add point 1',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                          ElevatedButton(onPressed: (){
                            
                                    setState(() {
                                      teamApoints+=2;
                                    });
                            print(teamApoints);
                          }, child: Text('Add point 2',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                          ElevatedButton(onPressed: (){
                            
                                    setState(() {
                                      teamApoints+=3;
                                    });
                            print(teamApoints);
                          }, child: Text('Add point 3',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                      ],
                           ),

 
                       Container(
                        height: 350,
                         child: VerticalDivider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                         ),
                       ),


             
                 Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:18.0),
                          child: Text(
                            'Team B',
                          style: TextStyle(
                            fontSize: 28
                          ),
                          ),
                        ),
                        Text(
                          '$teamBpoints',
                          style: TextStyle(
                            fontSize: 100
                          ),
                          ),
                          ElevatedButton(onPressed: (){
                                    setState(() {
                                      teamBpoints++;
                                    });
                            print(teamBpoints);
                     
                          }, child: Text('Add point 1',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                          ElevatedButton(onPressed: (){
                            
                                    setState(() {
                                      teamBpoints+=2;
                                    });
                            print(teamBpoints);
                          }, child: Text('Add point 2',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                          ElevatedButton(onPressed: (){
                            setState(() {
                                      teamBpoints+=3;
                                    });
                            print(teamBpoints);
                          }, child: Text('Add point 3',style: TextStyle(
                            color: Colors.black
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          
                          ),
                      ],
                           ),
             
                   ],
                 ),
                 Spacer(flex: 3,),
                 Container(
                  width: 150,
                   child: ElevatedButton(onPressed: (){
                    setState(() {
                      teamApoints=0;
                      teamBpoints=0;
                    });
                   }, child: Text('Reset',style: TextStyle(
                              color: Colors.black
                            ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange
                            ),
                            
                            ),
                 ),
                          Spacer(flex: 1,)
               ],
             ),
          
          

         ),
      )


    );
  }
}