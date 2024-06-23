import 'package:calculator_flutter/wedgets/calculator_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'colors.dart';

class HomeScreen extends  StatefulWidget{
  @override
  State<StatefulWidget> createState()  => _HomeScreenState ();

}

class _HomeScreenState extends State<HomeScreen>{

  var userInput = " ";
  var answer = " " ;
  bool isEqualPressed = false;


  // Function to handle button clicks
  void buttonClicked(String buttonText) {
     isEqualPressed = false;
    setState(() {
      if (buttonText == "=") {
        equalPressed();
      } else if (buttonText == "AC") {
        userInput = "";
        answer = "";
        isEqualPressed = false ;
      } else if (buttonText == "DL") {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
          if (userInput.isEmpty) {
            answer = " " ;
          }
          isEqualPressed = false ;
        }
      } else if ("+-x/%.".contains(buttonText)) {
        if (userInput.isNotEmpty && "+-x/%.".contains(userInput[userInput.length - 1])) {
          userInput = userInput.substring(0, userInput.length - 1) + buttonText;
        } else {
          userInput += buttonText;
        }
      } else {
        userInput += buttonText;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
 return Scaffold(
   // ......................AppBar...............................//
   appBar: AppBar(title: Text("Calculator" , style:  TextStyle(fontSize:25 , fontWeight:FontWeight.bold , color: appTitle) , ),
     centerTitle: true ,
   backgroundColor: appBarBac,
   ),
   backgroundColor: appBackGround,
   // .......................... BODY PART ........................................//
   body:Column(
     children: [
       Expanded(
         flex: 3,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             // ..................... Input Box ..........................//
             Container(
               margin: EdgeInsets.only(right: 10),
                 alignment: Alignment.centerRight
                 ,child: Text("$userInput" ,
               style: TextStyle(fontWeight: FontWeight.bold ,
                 fontSize: isEqualPressed ? 30 : 50 ,
                 color: isEqualPressed ? Colors.black54 : Colors.black

               ) ,)),

             // ..................... Answer Box ...............................//
             Container(
               margin: EdgeInsets.only(right: 10),
                 alignment:Alignment.centerRight
                 ,child: Text("$answer" , style: TextStyle(fontWeight: FontWeight.bold ,
                 fontSize: isEqualPressed ? 50 : 30,
                 color: isEqualPressed ? Colors.black : Colors.black54
             ),)) ,

           ],
         ),
       ) ,


       Expanded(
         flex: 5,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CalculatorButton(color: appTitle, textColor: buttonBlack, buttonText: "AC", buttonTapped: (){
                   buttonClicked("AC") ;
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "DL", buttonTapped: (){

                   setState(() {
                     buttonClicked("DL") ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "%", buttonTapped: (){

                   setState(() {
                     buttonClicked("%") ;
                     equalPressed() ;
                   });
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "/", buttonTapped: (){

                   setState(() {
                     buttonClicked("/") ;
                     equalPressed() ;
                   });
                 }),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "7", buttonTapped: (){
                     setState(() {
                       buttonClicked("7") ;
                       equalPressed() ;
                     });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack,  buttonText: "8", buttonTapped: (){

                   setState(() {
                     buttonClicked("8");
                     equalPressed() ;
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "9", buttonTapped: (){

                   setState(() {
                     buttonClicked("9") ;
                     equalPressed() ;
                   });
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "x", buttonTapped: (){

                   setState(() {
                     buttonClicked("x") ;
                     equalPressed() ;
                   });
                 }),
               ],
             ) ,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "4", buttonTapped: (){
                   setState(() {
                     buttonClicked("4") ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "5", buttonTapped: (){
                   buttonClicked("5") ;
                   setState(() {
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "6", buttonTapped: (){

                   setState(() {
                     buttonClicked("6") ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "-", buttonTapped: (){

                   setState(() {
                     buttonClicked("-") ;
                     equalPressed() ;
                   });
                 }),
               ],
             ) ,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "1", buttonTapped: (){

                   setState(() {
                     buttonClicked("1") ;
                     equalPressed() ;
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "2", buttonTapped: (){

                   setState(() {
                     buttonClicked("2");
                     equalPressed() ;
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "3", buttonTapped: (){

                   setState(() {
                     buttonClicked("3")  ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: buttonGray, textColor: buttonBlack, buttonText: "+", buttonTapped: (){

                   setState(() {
                     buttonClicked("+") ;
                     equalPressed();
                   });
                 }),
               ],
             ) ,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "00", buttonTapped: (){

                   setState(() {
                     buttonClicked("00") ;
                     equalPressed();

                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: "0", buttonTapped: (){

                   setState(() {
                     buttonClicked("0") ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: appWhit, textColor: buttonBlack, buttonText: ".", buttonTapped: (){
                   setState(() {
                     buttonClicked(".") ;
                     equalPressed();
                   });
                 }),
                 CalculatorButton(color: appTitle, textColor: buttonBlack, buttonText: "=", buttonTapped: (){
                   buttonClicked("=") ;
                   setState(() {
                     equalPressed();
                     isEqualPressed = true;
                   });

                 }),
               ],
             ) ,

           ],
         ),
       ) ,


     ],
   ),
 );
  }

  // function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*').replaceAll('%', '/100') ;

    // Calculate the operation
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();

  }


}

