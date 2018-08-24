import 'package:flutter/material.dart';

const btnColor = Color.fromRGBO(145,145,145,1.0);

Widget post(String title, String description){
  return Container(
    padding: EdgeInsets.all(15.0),
    
    //Column with image and descriptions
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Container for image
        Container(
          child: Container(          
            color: Color.fromRGBO(200,200,200,.5),
            width: double.infinity,
            height: 200.0,),
        ),
        //Container with title and buttons
        Container(
          margin: EdgeInsets.only(top:22.0),
          //Column with title and buttons
          child: Column(
            children: [
              //Title container
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child:Text(
                  title.toUpperCase(), 
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              //Row with buttons
              Row(      
                children: [
                  //Remember Button
                  Container(
                    padding: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(
                      children: [
                        Icon(Icons.alarm,size: 20.0,color: btnColor),
                        Text("Fixar", style: TextStyle(fontSize: 12.0,color: btnColor),)
                      ],
                    ),
                  ),
                  //Save Button
                  Container(
                    padding: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(
                      children: [
                        Icon(Icons.save,size: 20.0,color: btnColor),
                        Text("Salvar", style: TextStyle(fontSize: 12.0,color: btnColor),)
                      ],
                    ),
                  ),
                  //Share Button
                  Container(
                    padding: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(
                     
                      children: [
                        Icon(Icons.share,size: 20.0,color: btnColor),
                        Text("Compartilhar", style: TextStyle(fontSize: 12.0,color: btnColor),)
                      ],
                    ),
                  ),
                  //Find more Button
                  Expanded(  
                    child: FlatButton(
                      child: Text(
                        "Saiba Mais...",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ), 
                    onPressed: null,
                    )
                  ),
                ],
                
              )
            ],
          ),
        )
      ],
    ),
  ); 
}