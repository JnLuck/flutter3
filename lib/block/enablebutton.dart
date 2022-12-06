import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Game3 {
  List buttonsgame = [
    [{'b1' : ''}, {'b2' : ''},{'b3' : ''}],
    [{'b4' : ''}, {'b5' : ''},{'b6' : ''}],
    [{'b7' : ''}, {'b8' : ''},{'b9' : ''}], 
  ];

  List<Map> partidas =[
    // {'partido':1, 'ganador': 'Juan', 'symbol': 'x'},  //example
  ];

  int party = 0;

  int counterGame = 0;
  late BuildContext subcont;

  String player1 = '';
  String player2 = '';

  allbuttons(){
    return buttonsgame;
  }

  addIcon(int index1, int index2 ,String button, String icon){
    counterGame += 1;
    buttonsgame[index1][index2][button] = icon;
    if (counterGame >= 5){
      if (winDectect('close') != null){
        var wix = {};
        party++;
        wix['partido'] = party;
        wix['ganador'] = player1;
        wix['symbol'] = 'X';
        partidas.add(wix);
        showDialog(
                  context: subcont,
                  builder: (ctxt) => new AlertDialog(
                    title: Text("Player X Win"),
                    content: Text("Felicidades $player1 Ganaste!!!!"),
                  )
              );
      } else if (winDectect('radio_button_unchecked') != null){
        var wix = {};
        party++;
        wix['partido'] = party;
        wix['ganador'] = player2;
        wix['symbol'] = 'O';
        partidas.add(wix);
        showDialog(
                  context: subcont,
                  builder: (ctxt) => new AlertDialog(
                    title: Text("Player 0 Win"),
                    content: Text("Felicidades $player2 Ganaste !!!"),
                  )
              );
            
      }
      if (counterGame == 8 ||  counterGame == 9){

      }
    }
    // return 2;
  }

  concon(BuildContext con){
    subcont = con;
  }

  subget(){
    return subcont;
  }

  winDectect(simbol){
    simbol = '($simbol)';
    var win = null;
    if (buttonsgame[0][0].values.toString()  == simbol && buttonsgame[0][1].values.toString() == simbol && buttonsgame[0][2].values.toString() == simbol){
      win = simbol;
    }
    if (buttonsgame[1][0].values.toString() == simbol && buttonsgame[1][1].values.toString() == simbol && buttonsgame[1][2].values.toString() == simbol){
      win = simbol;
    }
    if (buttonsgame[2][0].values.toString() == simbol && buttonsgame[2][1].values.toString() == simbol && buttonsgame[2][2].values.toString() == simbol){
      win = simbol;
    }

    if (buttonsgame[0][0].values.toString() == simbol && buttonsgame[1][0].values.toString() == simbol && buttonsgame[2][0].values.toString() == simbol){
      win = simbol;
    }
    if (buttonsgame[0][1].values.toString() == simbol && buttonsgame[1][1].values.toString() == simbol && buttonsgame[2][1].values.toString() == simbol){
      win = simbol;
    }
    if (buttonsgame[0][2].values.toString() == simbol && buttonsgame[1][2].values.toString() == simbol && buttonsgame[2][2].values.toString() == simbol){
      win = simbol;
    }

    if (buttonsgame[0][0].values.toString() == simbol && buttonsgame[1][1].values.toString() == simbol && buttonsgame[2][2].values.toString() == simbol){
      win = simbol;
    }
    if (buttonsgame[2][0].values.toString() == simbol && buttonsgame[2][1].values.toString() == simbol && buttonsgame[0][2].values.toString() == simbol){
      win = simbol;
    }

    return win;
  }

  buttonValue(int index1, int index2 ,String button){
    return buttonsgame[index1][index2][button];
  }

  resetButtons(){
    counterGame = 0;
    buttonsgame = [
    [{'b1' : ''}, {'b2' : ''},{'b3' : ''}],
    [{'b4' : ''}, {'b5' : ''},{'b6' : ''}],
    [{'b7' : ''}, {'b8' : ''},{'b9' : ''}],
  ];
  }
}
