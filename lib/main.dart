import 'package:flutter/material.dart';
import './components/firebase.dart';

void main() => runApp(MyApp());

const bckColor = Color.fromRGBO(30, 30, 30, 1.0);
const btnColor = Color.fromRGBO(145,145,145,1.0);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spread',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Color.fromRGBO(30,30,30,1.0),
       
      ),
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Spread'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
                tooltip: 'search',
              ),
              IconButton(
                icon: Icon(Icons.person_pin),
                onPressed: null,
              ),
            ]
          ),
          body: TabBarView(
            children: [
              Container(
                color: Color.fromRGBO(54,54,54,1.0),
                
              ),
              Container(
                color: Color.fromRGBO(54,54,54,1.0),
                
              ),
              TestBase(),
              Container(
                color: Color.fromRGBO(54,54,54,1.0),
                
              ),
              Container(
                color: Color.fromRGBO(54,54,54,1.0),
                
              ),
            ],
          ),
          bottomNavigationBar: TabBar(
            labelStyle: TextStyle(fontSize: 10.0),
            indicatorColor: Colors.blue,
            unselectedLabelColor: btnColor,
            labelColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.star),text:'Seguindo'),
              Tab(icon: Icon(Icons.photo),text:'Fixados'),
              Tab(icon: Icon(Icons.home),text:'Início'),
              Tab(icon: Icon(Icons.save),text:'Salvos'),
              Tab(icon: Icon(Icons.fiber_manual_record),text:'Destaques')       
            ],
          ),
        ),
      ),
    );
  }
}