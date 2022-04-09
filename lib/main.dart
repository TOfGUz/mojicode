/*This is a first version of a message encryption tool that converts text to
 emojis. An emoji can also be used for encryption, from which a value is 
 calculated that works according to the Caesar cipher. Unfortunately, the 
 code still contains some bugs, boilerplates and other issues, but it works 
 reasonably well. The code is still under development.
 Please note that this code is not perfect and is not intended for public use, 
 but is just my own gimmick.*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final _inputController = TextEditingController();
  late final _keyController = TextEditingController();
  late final _outputController = TextEditingController();
  var parser = EmojiParser();
  final _formKey = GlobalKey<FormState>();

  //Encryption of a text
  void _encrypt() {
    //No text entered
    if (_inputController.text.isEmpty) {
      _outputController.text =
          "You have to enter some text before pushing the button!";
      //No key entered, simple encoding
    } else if (_keyController.text.isEmpty) {
      late String text = _inputController.text;
      late List textToNumber = [];
      late List emojis = [];
      for (var i = 0; i < text.length; i++) {
        switch (text[i]) {
          case "a":
            textToNumber.add(0);
            break;
          case "b":
            textToNumber.add(1);
            break;
          case "c":
            textToNumber.add(2);
            break;
          case "d":
            textToNumber.add(3);
            break;
          case "e":
            textToNumber.add(4);
            break;
          case "f":
            textToNumber.add(5);
            break;
          case "g":
            textToNumber.add(6);
            break;
          case "h":
            textToNumber.add(7);
            break;
          case "i":
            textToNumber.add(8);
            break;
          case "j":
            textToNumber.add(9);
            break;
          case "k":
            textToNumber.add(10);
            break;
          case "l":
            textToNumber.add(11);
            break;
          case "m":
            textToNumber.add(12);
            break;
          case "n":
            textToNumber.add(13);
            break;
          case "o":
            textToNumber.add(14);
            break;
          case "p":
            textToNumber.add(15);
            break;
          case "q":
            textToNumber.add(16);
            break;
          case "r":
            textToNumber.add(17);
            break;
          case "s":
            textToNumber.add(18);
            break;
          case "t":
            textToNumber.add(19);
            break;
          case "u":
            textToNumber.add(20);
            break;
          case "v":
            textToNumber.add(21);
            break;
          case "w":
            textToNumber.add(22);
            break;
          case "x":
            textToNumber.add(23);
            break;
          case "y":
            textToNumber.add(24);
            break;
          case "z":
            textToNumber.add(25);
            break;
          case "A":
            textToNumber.add(26);
            break;
          case "B":
            textToNumber.add(27);
            break;
          case "C":
            textToNumber.add(28);
            break;
          case "D":
            textToNumber.add(29);
            break;
          case "E":
            textToNumber.add(30);
            break;
          case "F":
            textToNumber.add(31);
            break;
          case "G":
            textToNumber.add(32);
            break;
          case "H":
            textToNumber.add(33);
            break;
          case "I":
            textToNumber.add(34);
            break;
          case "J":
            textToNumber.add(35);
            break;
          case "K":
            textToNumber.add(36);
            break;
          case "L":
            textToNumber.add(37);
            break;
          case "M":
            textToNumber.add(38);
            break;
          case "N":
            textToNumber.add(39);
            break;
          case "O":
            textToNumber.add(40);
            break;
          case "P":
            textToNumber.add(41);
            break;
          case "Q":
            textToNumber.add(42);
            break;
          case "R":
            textToNumber.add(43);
            break;
          case "S":
            textToNumber.add(44);
            break;
          case "T":
            textToNumber.add(45);
            break;
          case "U":
            textToNumber.add(46);
            break;
          case "V":
            textToNumber.add(47);
            break;
          case "W":
            textToNumber.add(48);
            break;
          case "X":
            textToNumber.add(49);
            break;
          case "Y":
            textToNumber.add(50);
            break;
          case "Z":
            textToNumber.add(51);
            break;
          case "0":
            textToNumber.add(52);
            break;
          case "1":
            textToNumber.add(53);
            break;
          case "2":
            textToNumber.add(54);
            break;
          case "3":
            textToNumber.add(55);
            break;
          case "4":
            textToNumber.add(56);
            break;
          case "5":
            textToNumber.add(57);
            break;
          case "6":
            textToNumber.add(58);
            break;
          case "7":
            textToNumber.add(59);
            break;
          case "8":
            textToNumber.add(60);
            break;
          case "9":
            textToNumber.add(61);
            break;
          case "!":
            textToNumber.add(62);
            break;
          case "?":
            textToNumber.add(63);
            break;
          case ",":
            textToNumber.add(64);
            break;
          case ".":
            textToNumber.add(65);
            break;
          case "+":
            textToNumber.add(66);
            break;
          case "-":
            textToNumber.add(67);
            break;
          case " ":
            textToNumber.add(68);
            break;
          case "=":
            textToNumber.add(69);
            break;
          case "/":
            textToNumber.add(70);
            break;
          case "_":
            textToNumber.add(71);
            break;
          case "%":
            textToNumber.add(72);
            break;
          case "&":
            textToNumber.add(73);
            break;
          case "#":
            textToNumber.add(74);
            break;
          case ":":
            textToNumber.add(75);
            break;
          case "°":
            textToNumber.add(76);
            break;
        }
      }
      for (var j = 0; j < textToNumber.length; j++) {
        switch (textToNumber[j]) {
          case 0:
            emojis.add(parser.emojify("😎").toString());
            break;
          case 1:
            emojis.add(parser.emojify("☠").toString());
            break;
          case 2:
            emojis.add(parser.emojify("🤣").toString());
            break;
          case 3:
            emojis.add(parser.emojify("🍺").toString());
            break;
          case 4:
            emojis.add(parser.emojify("🗯").toString());
            break;
          case 5:
            emojis.add(parser.emojify("🆒").toString());
            break;
          case 6:
            emojis.add(parser.emojify("🌑").toString());
            break;
          case 7:
            emojis.add(parser.emojify("👻").toString());
            break;
          case 8:
            emojis.add(parser.emojify("😥").toString());
            break;
          case 9:
            emojis.add(parser.emojify("🚗").toString());
            break;
          case 10:
            emojis.add(parser.emojify("🎃").toString());
            break;
          case 11:
            emojis.add(parser.emojify("🤑").toString());
            break;
          case 12:
            emojis.add(parser.emojify("☢").toString());
            break;
          case 13:
            emojis.add(parser.emojify("🙁").toString());
            break;
          case 14:
            emojis.add(parser.emojify("🤬").toString());
            break;
          case 15:
            emojis.add(parser.emojify("🍶").toString());
            break;
          case 16:
            emojis.add(parser.emojify("🌻").toString());
            break;
          case 17:
            emojis.add(parser.emojify("🦿").toString());
            break;
          case 18:
            emojis.add(parser.emojify("💐").toString());
            break;
          case 19:
            emojis.add(parser.emojify("🩱").toString());
            break;
          case 20:
            emojis.add(parser.emojify("🎱").toString());
            break;
          case 21:
            emojis.add(parser.emojify("❗").toString());
            break;
          case 22:
            emojis.add(parser.emojify("🙄").toString());
            break;
          case 23:
            emojis.add(parser.emojify("❌").toString());
            break;
          case 24:
            emojis.add(parser.emojify("❤").toString());
            break;
          case 25:
            emojis.add(parser.emojify("🐥").toString());
            break;
          case 26:
            emojis.add(parser.emojify("🛥").toString());
            break;
          case 27:
            emojis.add(parser.emojify("🆔").toString());
            break;
          case 28:
            emojis.add(parser.emojify("🌡").toString());
            break;
          case 29:
            emojis.add(parser.emojify("🙊").toString());
            break;
          case 30:
            emojis.add(parser.emojify("📉").toString());
            break;
          case 31:
            emojis.add(parser.emojify("🐡").toString());
            break;
          case 32:
            emojis.add(parser.emojify("🧺").toString());
            break;
          case 33:
            emojis.add(parser.emojify("📏").toString());
            break;
          case 34:
            emojis.add(parser.emojify("🪓").toString());
            break;
          case 35:
            emojis.add(parser.emojify("🔨").toString());
            break;
          case 36:
            emojis.add(parser.emojify("🛡️").toString());
            break;
          case 37:
            emojis.add(parser.emojify("💦").toString());
            break;
          case 38:
            emojis.add(parser.emojify("🧰").toString());
            break;
          case 39:
            emojis.add(parser.emojify("💊").toString());
            break;
          case 40:
            emojis.add(parser.emojify("🚽").toString());
            break;
          case 41:
            emojis.add(parser.emojify("🔬").toString());
            break;
          case 42:
            emojis.add(parser.emojify("⚰️").toString());
            break;
          case 43:
            emojis.add(parser.emojify("♾️").toString());
            break;
          case 44:
            emojis.add(parser.emojify("🏫").toString());
            break;
          case 45:
            emojis.add(parser.emojify("💨").toString());
            break;
          case 46:
            emojis.add(parser.emojify("⛏").toString());
            break;
          case 47:
            emojis.add(parser.emojify("⚠️").toString());
            break;
          case 48:
            emojis.add(parser.emojify("💯").toString());
            break;
          case 49:
            emojis.add(parser.emojify("🥞").toString());
            break;
          case 50:
            emojis.add(parser.emojify("🍫").toString());
            break;
          case 51:
            emojis.add(parser.emojify("🛰").toString());
            break;
          case 52:
            emojis.add(parser.emojify("🦚").toString());
            break;
          case 53:
            emojis.add(parser.emojify("🕷").toString());
            break;
          case 54:
            emojis.add(parser.emojify("🍕").toString());
            break;
          case 55:
            emojis.add(parser.emojify("🌯").toString());
            break;
          case 56:
            emojis.add(parser.emojify("🚕").toString());
            break;
          case 57:
            emojis.add(parser.emojify("🏘").toString());
            break;
          case 58:
            emojis.add(parser.emojify("📡").toString());
            break;
          case 59:
            emojis.add(parser.emojify("🧂").toString());
            break;
          case 60:
            emojis.add(parser.emojify("🎴").toString());
            break;
          case 61:
            emojis.add(parser.emojify("😻").toString());
            break;
          case 62:
            emojis.add(parser.emojify("📸").toString());
            break;
          case 63:
            emojis.add(parser.emojify("📱").toString());
            break;
          case 64:
            emojis.add(parser.emojify("🙉").toString());
            break;
          case 65:
            emojis.add(parser.emojify("📣").toString());
            break;
          case 66:
            emojis.add(parser.emojify("👨‍🦰").toString());
            break;
          case 67:
            emojis.add(parser.emojify("🔧").toString());
            break;
          case 68:
            emojis.add(parser.emojify("🍆").toString());
            break;
          case 69:
            emojis.add(parser.emojify("🍑").toString());
            break;
          case 70:
            emojis.add(parser.emojify("🔒").toString());
            break;
          case 71:
            emojis.add(parser.emojify("🎮").toString());
            break;
          case 72:
            emojis.add(parser.emojify("🏆").toString());
            break;
          case 73:
            emojis.add(parser.emojify("🙏").toString());
            break;
          case 74:
            emojis.add(parser.emojify("🤟").toString());
            break;
          case 75:
            emojis.add(parser.emojify("📍").toString());
            break;
          case 76:
            emojis.add(parser.emojify("🗺").toString());
            break;
        }
      }
      _outputController.text = emojis.join();
    }
    //Key entered, key is used for encryption
    else {
      late String text = _inputController.text;
      late List textToNumber = [];
      late List emojis = [];
      for (var i = 0; i < text.length; i++) {
        switch (text[i]) {
          case "a":
            textToNumber.add(0);
            break;
          case "b":
            textToNumber.add(1);
            break;
          case "c":
            textToNumber.add(2);
            break;
          case "d":
            textToNumber.add(3);
            break;
          case "e":
            textToNumber.add(4);
            break;
          case "f":
            textToNumber.add(5);
            break;
          case "g":
            textToNumber.add(6);
            break;
          case "h":
            textToNumber.add(7);
            break;
          case "i":
            textToNumber.add(8);
            break;
          case "j":
            textToNumber.add(9);
            break;
          case "k":
            textToNumber.add(10);
            break;
          case "l":
            textToNumber.add(11);
            break;
          case "m":
            textToNumber.add(12);
            break;
          case "n":
            textToNumber.add(13);
            break;
          case "o":
            textToNumber.add(14);
            break;
          case "p":
            textToNumber.add(15);
            break;
          case "q":
            textToNumber.add(16);
            break;
          case "r":
            textToNumber.add(17);
            break;
          case "s":
            textToNumber.add(18);
            break;
          case "t":
            textToNumber.add(19);
            break;
          case "u":
            textToNumber.add(20);
            break;
          case "v":
            textToNumber.add(21);
            break;
          case "w":
            textToNumber.add(22);
            break;
          case "x":
            textToNumber.add(23);
            break;
          case "y":
            textToNumber.add(24);
            break;
          case "z":
            textToNumber.add(25);
            break;
          case "A":
            textToNumber.add(26);
            break;
          case "B":
            textToNumber.add(27);
            break;
          case "C":
            textToNumber.add(28);
            break;
          case "D":
            textToNumber.add(29);
            break;
          case "E":
            textToNumber.add(30);
            break;
          case "F":
            textToNumber.add(31);
            break;
          case "G":
            textToNumber.add(32);
            break;
          case "H":
            textToNumber.add(33);
            break;
          case "I":
            textToNumber.add(34);
            break;
          case "J":
            textToNumber.add(35);
            break;
          case "K":
            textToNumber.add(36);
            break;
          case "L":
            textToNumber.add(37);
            break;
          case "M":
            textToNumber.add(38);
            break;
          case "N":
            textToNumber.add(39);
            break;
          case "O":
            textToNumber.add(40);
            break;
          case "P":
            textToNumber.add(41);
            break;
          case "Q":
            textToNumber.add(42);
            break;
          case "R":
            textToNumber.add(43);
            break;
          case "S":
            textToNumber.add(44);
            break;
          case "T":
            textToNumber.add(45);
            break;
          case "U":
            textToNumber.add(46);
            break;
          case "V":
            textToNumber.add(47);
            break;
          case "W":
            textToNumber.add(48);
            break;
          case "X":
            textToNumber.add(49);
            break;
          case "Y":
            textToNumber.add(50);
            break;
          case "Z":
            textToNumber.add(51);
            break;
          case "0":
            textToNumber.add(52);
            break;
          case "1":
            textToNumber.add(53);
            break;
          case "2":
            textToNumber.add(54);
            break;
          case "3":
            textToNumber.add(55);
            break;
          case "4":
            textToNumber.add(56);
            break;
          case "5":
            textToNumber.add(57);
            break;
          case "6":
            textToNumber.add(58);
            break;
          case "7":
            textToNumber.add(59);
            break;
          case "8":
            textToNumber.add(60);
            break;
          case "9":
            textToNumber.add(61);
            break;
          case "!":
            textToNumber.add(62);
            break;
          case "?":
            textToNumber.add(63);
            break;
          case ",":
            textToNumber.add(64);
            break;
          case ".":
            textToNumber.add(65);
            break;
          case "+":
            textToNumber.add(66);
            break;
          case "-":
            textToNumber.add(67);
            break;
          case " ":
            textToNumber.add(68);
            break;
          case "=":
            textToNumber.add(69);
            break;
          case "/":
            textToNumber.add(70);
            break;
          case "_":
            textToNumber.add(71);
            break;
          case "%":
            textToNumber.add(72);
            break;
          case "&":
            textToNumber.add(73);
            break;
          case "#":
            textToNumber.add(74);
            break;
          case ":":
            textToNumber.add(75);
            break;
          case "°":
            textToNumber.add(76);
            break;
        }
      }
      if (_keyController.text.isNotEmpty) {
        num sumKeyValue = 0;
        String value = _keyController.text;
        Emoji emojiData = parser.getEmoji("${value}");
        String name = emojiData.name;
        List keyvalues = [];
        for (var i = 0; i < name.length; i++) {
          switch (name[i]) {
            case "a":
              keyvalues.add(0);
              break;
            case "b":
              keyvalues.add(1);
              break;
            case "c":
              keyvalues.add(2);
              break;
            case "d":
              keyvalues.add(3);
              break;
            case "e":
              keyvalues.add(4);
              break;
            case "f":
              keyvalues.add(5);
              break;
            case "g":
              keyvalues.add(6);
              break;
            case "h":
              keyvalues.add(7);
              break;
            case "i":
              keyvalues.add(8);
              break;
            case "j":
              keyvalues.add(9);
              break;
            case "k":
              keyvalues.add(10);
              break;
            case "l":
              keyvalues.add(11);
              break;
            case "m":
              keyvalues.add(12);
              break;
            case "n":
              keyvalues.add(13);
              break;
            case "o":
              keyvalues.add(14);
              break;
            case "p":
              keyvalues.add(15);
              break;
            case "q":
              keyvalues.add(16);
              break;
            case "r":
              keyvalues.add(17);
              break;
            case "s":
              keyvalues.add(18);
              break;
            case "t":
              keyvalues.add(19);
              break;
            case "u":
              keyvalues.add(20);
              break;
            case "v":
              keyvalues.add(21);
              break;
            case "w":
              keyvalues.add(22);
              break;
            case "x":
              keyvalues.add(23);
              break;
            case "y":
              keyvalues.add(24);
              break;
            case "z":
              keyvalues.add(25);
              break;
            case "A":
              keyvalues.add(26);
              break;
            case "B":
              keyvalues.add(27);
              break;
            case "C":
              keyvalues.add(28);
              break;
            case "D":
              keyvalues.add(29);
              break;
            case "E":
              keyvalues.add(30);
              break;
            case "F":
              keyvalues.add(31);
              break;
            case "G":
              keyvalues.add(32);
              break;
            case "H":
              keyvalues.add(33);
              break;
            case "I":
              keyvalues.add(34);
              break;
            case "J":
              keyvalues.add(35);
              break;
            case "K":
              keyvalues.add(36);
              break;
            case "L":
              keyvalues.add(37);
              break;
            case "M":
              keyvalues.add(38);
              break;
            case "N":
              keyvalues.add(39);
              break;
            case "O":
              keyvalues.add(40);
              break;
            case "P":
              keyvalues.add(41);
              break;
            case "Q":
              keyvalues.add(42);
              break;
            case "R":
              keyvalues.add(43);
              break;
            case "S":
              keyvalues.add(44);
              break;
            case "T":
              keyvalues.add(45);
              break;
            case "U":
              keyvalues.add(46);
              break;
            case "V":
              keyvalues.add(47);
              break;
            case "W":
              keyvalues.add(48);
              break;
            case "X":
              keyvalues.add(49);
              break;
            case "Y":
              keyvalues.add(50);
              break;
            case "Z":
              keyvalues.add(51);
              break;
            case "0":
              keyvalues.add(52);
              break;
            case "1":
              keyvalues.add(53);
              break;
            case "2":
              keyvalues.add(54);
              break;
            case "3":
              keyvalues.add(55);
              break;
            case "4":
              keyvalues.add(56);
              break;
            case "5":
              keyvalues.add(57);
              break;
            case "6":
              keyvalues.add(58);
              break;
            case "7":
              keyvalues.add(59);
              break;
            case "8":
              keyvalues.add(60);
              break;
            case "9":
              keyvalues.add(61);
              break;
            case "!":
              keyvalues.add(62);
              break;
            case "?":
              keyvalues.add(63);
              break;
            case ",":
              keyvalues.add(64);
              break;
            case ".":
              keyvalues.add(65);
              break;
            case "+":
              keyvalues.add(66);
              break;
            case "-":
              keyvalues.add(67);
              break;
            case " ":
              keyvalues.add(68);
              break;
            case "=":
              keyvalues.add(69);
              break;
            case "/":
              keyvalues.add(70);
              break;
            case "_":
              keyvalues.add(71);
              break;
            case "%":
              keyvalues.add(72);
              break;
            case "&":
              keyvalues.add(73);
              break;
            case "#":
              keyvalues.add(74);
              break;
            case ":":
              keyvalues.add(75);
              break;
            case "°":
              keyvalues.add(76);
              break;
          }
        }
        //Calculate the value of the key to determine the shift
        for (var i = 0; i < keyvalues.length; i++) {
          sumKeyValue = sumKeyValue + keyvalues[i];
        }
        //Toggle values in the range of emojis with the sumKeyValue
        for (var i = 0; i < textToNumber.length; i++) {
          textToNumber[i] = (textToNumber[i] + sumKeyValue) % 77;
        }
      }
      //No matter if the key is empty or not, this function is always called
      for (var j = 0; j < textToNumber.length; j++) {
        switch (textToNumber[j]) {
          case 0:
            emojis.add(parser.emojify("😎").toString());
            break;
          case 1:
            emojis.add(parser.emojify("☠").toString());
            break;
          case 2:
            emojis.add(parser.emojify("🤣").toString());
            break;
          case 3:
            emojis.add(parser.emojify("🍺").toString());
            break;
          case 4:
            emojis.add(parser.emojify("🗯").toString());
            break;
          case 5:
            emojis.add(parser.emojify("🆒").toString());
            break;
          case 6:
            emojis.add(parser.emojify("🌑").toString());
            break;
          case 7:
            emojis.add(parser.emojify("👻").toString());
            break;
          case 8:
            emojis.add(parser.emojify("😥").toString());
            break;
          case 9:
            emojis.add(parser.emojify("🚗").toString());
            break;
          case 10:
            emojis.add(parser.emojify("🎃").toString());
            break;
          case 11:
            emojis.add(parser.emojify("🤑").toString());
            break;
          case 12:
            emojis.add(parser.emojify("☢").toString());
            break;
          case 13:
            emojis.add(parser.emojify("🙁").toString());
            break;
          case 14:
            emojis.add(parser.emojify("🤬").toString());
            break;
          case 15:
            emojis.add(parser.emojify("🍶").toString());
            break;
          case 16:
            emojis.add(parser.emojify("🌻").toString());
            break;
          case 17:
            emojis.add(parser.emojify("🦿").toString());
            break;
          case 18:
            emojis.add(parser.emojify("💐").toString());
            break;
          case 19:
            emojis.add(parser.emojify("🩱").toString());
            break;
          case 20:
            emojis.add(parser.emojify("🎱").toString());
            break;
          case 21:
            emojis.add(parser.emojify("❗").toString());
            break;
          case 22:
            emojis.add(parser.emojify("🙄").toString());
            break;
          case 23:
            emojis.add(parser.emojify("❌").toString());
            break;
          case 24:
            emojis.add(parser.emojify("❤").toString());
            break;
          case 25:
            emojis.add(parser.emojify("🐥").toString());
            break;
          case 26:
            emojis.add(parser.emojify("🛥").toString());
            break;
          case 27:
            emojis.add(parser.emojify("🆔").toString());
            break;
          case 28:
            emojis.add(parser.emojify("🌡").toString());
            break;
          case 29:
            emojis.add(parser.emojify("🙊").toString());
            break;
          case 30:
            emojis.add(parser.emojify("📉").toString());
            break;
          case 31:
            emojis.add(parser.emojify("🐡").toString());
            break;
          case 32:
            emojis.add(parser.emojify("🧺").toString());
            break;
          case 33:
            emojis.add(parser.emojify("📏").toString());
            break;
          case 34:
            emojis.add(parser.emojify("🪓").toString());
            break;
          case 35:
            emojis.add(parser.emojify("🔨").toString());
            break;
          case 36:
            emojis.add(parser.emojify("🛡️").toString());
            break;
          case 37:
            emojis.add(parser.emojify("💦").toString());
            break;
          case 38:
            emojis.add(parser.emojify("🧰").toString());
            break;
          case 39:
            emojis.add(parser.emojify("💊").toString());
            break;
          case 40:
            emojis.add(parser.emojify("🚽").toString());
            break;
          case 41:
            emojis.add(parser.emojify("🔬").toString());
            break;
          case 42:
            emojis.add(parser.emojify("⚰️").toString());
            break;
          case 43:
            emojis.add(parser.emojify("♾️").toString());
            break;
          case 44:
            emojis.add(parser.emojify("🏫").toString());
            break;
          case 45:
            emojis.add(parser.emojify("💨").toString());
            break;
          case 46:
            emojis.add(parser.emojify("⛏").toString());
            break;
          case 47:
            emojis.add(parser.emojify("⚠️").toString());
            break;
          case 48:
            emojis.add(parser.emojify("💯").toString());
            break;
          case 49:
            emojis.add(parser.emojify("🥞").toString());
            break;
          case 50:
            emojis.add(parser.emojify("🍫").toString());
            break;
          case 51:
            emojis.add(parser.emojify("🛰").toString());
            break;
          case 52:
            emojis.add(parser.emojify("🦚").toString());
            break;
          case 53:
            emojis.add(parser.emojify("🕷").toString());
            break;
          case 54:
            emojis.add(parser.emojify("🍕").toString());
            break;
          case 55:
            emojis.add(parser.emojify("🌯").toString());
            break;
          case 56:
            emojis.add(parser.emojify("🚕").toString());
            break;
          case 57:
            emojis.add(parser.emojify("🏘").toString());
            break;
          case 58:
            emojis.add(parser.emojify("📡").toString());
            break;
          case 59:
            emojis.add(parser.emojify("🧂").toString());
            break;
          case 60:
            emojis.add(parser.emojify("🎴").toString());
            break;
          case 61:
            emojis.add(parser.emojify("😻").toString());
            break;
          case 62:
            emojis.add(parser.emojify("📸").toString());
            break;
          case 63:
            emojis.add(parser.emojify("📱").toString());
            break;
          case 64:
            emojis.add(parser.emojify("🙉").toString());
            break;
          case 65:
            emojis.add(parser.emojify("📣").toString());
            break;
          case 66:
            emojis.add(parser.emojify("👨‍🦰").toString());
            break;
          case 67:
            emojis.add(parser.emojify("🔧").toString());
            break;
          case 68:
            emojis.add(parser.emojify("🍆").toString());
            break;
          case 69:
            emojis.add(parser.emojify("🍑").toString());
            break;
          case 70:
            emojis.add(parser.emojify("🔒").toString());
            break;
          case 71:
            emojis.add(parser.emojify("🎮").toString());
            break;
          case 72:
            emojis.add(parser.emojify("🏆").toString());
            break;
          case 73:
            emojis.add(parser.emojify("🙏").toString());
            break;
          case 74:
            emojis.add(parser.emojify("🤟").toString());
            break;
          case 75:
            emojis.add(parser.emojify("📍").toString());
            break;
          case 76:
            emojis.add(parser.emojify("🗺").toString());
            break;
        }
      }
      _outputController.text = emojis.join();
    }
  }

  //Decryption of a MoJiCoDeS
  void _decrypt() {
    //Nothing entered to decrypt
    if (_inputController.text.isEmpty) {
      _outputController.text =
          "You have to enter some <MoJiCoDe> before pushing the button!";
      //No key available, only normal decryption
    } else if (_keyController.text.isEmpty) {
      late var emojiList = parser.parseEmojis(_inputController.text);
      late List emojiToNumber = [];
      late List text = [];
      for (var i = 0; i < emojiList.length; i++) {
        switch (emojiList[i]) {
          case "😎":
            emojiToNumber.add(0);

            break;
          case "☠":
            emojiToNumber.add(1);

            break;
          case "🤣":
            emojiToNumber.add(2);

            break;
          case "🍺":
            emojiToNumber.add(3);

            break;
          case "🗯":
            emojiToNumber.add(4);

            break;
          case "🆒":
            emojiToNumber.add(5);
            break;
          case "🌑":
            emojiToNumber.add(6);
            break;
          case "👻":
            emojiToNumber.add(7);
            break;
          case "😥":
            emojiToNumber.add(8);
            break;
          case "🚗":
            emojiToNumber.add(9);
            break;
          case "🎃":
            emojiToNumber.add(10);
            break;
          case "🤑":
            emojiToNumber.add(11);
            break;
          case "☢":
            emojiToNumber.add(12);
            break;
          case "🙁":
            emojiToNumber.add(13);
            break;
          case "🤬":
            emojiToNumber.add(14);
            break;
          case "🍶":
            emojiToNumber.add(15);
            break;
          case "🌻":
            emojiToNumber.add(16);
            break;
          case "🦿":
            emojiToNumber.add(17);
            break;
          case "💐":
            emojiToNumber.add(18);
            break;
          case "🩱":
            emojiToNumber.add(19);
            break;
          case "🎱":
            emojiToNumber.add(20);
            break;
          case "❗":
            emojiToNumber.add(21);
            break;
          case "🙄":
            emojiToNumber.add(22);
            break;
          case "❌":
            emojiToNumber.add(23);
            break;
          case "❤":
            emojiToNumber.add(24);
            break;
          case "🐥":
            emojiToNumber.add(25);
            break;
          case "🛥":
            emojiToNumber.add(26);
            break;
          case "🆔":
            emojiToNumber.add(27);
            break;
          case "🌡":
            emojiToNumber.add(28);
            break;
          case "🙊":
            emojiToNumber.add(29);
            break;
          case "📉":
            emojiToNumber.add(30);
            break;
          case "🐡":
            emojiToNumber.add(31);
            break;
          case "🧺":
            emojiToNumber.add(32);
            break;
          case "📏":
            emojiToNumber.add(33);
            break;
          case "🪓":
            emojiToNumber.add(34);
            break;
          case "🔨":
            emojiToNumber.add(35);
            break;
          case "🛡️":
            emojiToNumber.add(36);
            break;
          case "💦":
            emojiToNumber.add(37);
            break;
          case "🧰":
            emojiToNumber.add(38);
            break;
          case "💊":
            emojiToNumber.add(39);
            break;
          case "🚽":
            emojiToNumber.add(40);
            break;
          case "🔬":
            emojiToNumber.add(41);
            break;
          case "⚰️":
            emojiToNumber.add(42);
            break;
          case "♾️":
            emojiToNumber.add(43);
            break;
          case "🏫":
            emojiToNumber.add(44);
            break;
          case "💨":
            emojiToNumber.add(45);
            break;
          case "⛏":
            emojiToNumber.add(46);
            break;
          case "⚠️":
            emojiToNumber.add(47);
            break;
          case "💯":
            emojiToNumber.add(48);
            break;
          case "🥞":
            emojiToNumber.add(49);
            break;
          case "🍫":
            emojiToNumber.add(50);
            break;
          case "🛰":
            emojiToNumber.add(51);
            break;
          case "🦚":
            emojiToNumber.add(52);
            break;
          case "🕷":
            emojiToNumber.add(53);
            break;
          case "🍕":
            emojiToNumber.add(54);
            break;
          case "🌯":
            emojiToNumber.add(55);
            break;
          case "🚕":
            emojiToNumber.add(56);
            break;
          case "🏘":
            emojiToNumber.add(57);
            break;
          case "📡":
            emojiToNumber.add(58);
            break;
          case "🧂":
            emojiToNumber.add(59);
            break;
          case "🎴":
            emojiToNumber.add(60);
            break;
          case "😻":
            emojiToNumber.add(61);
            break;
          case "📸":
            emojiToNumber.add(62);
            break;
          case "📱":
            emojiToNumber.add(63);
            break;
          case "🙉":
            emojiToNumber.add(64);
            break;
          case "📣":
            emojiToNumber.add(65);
            break;
          case "👨‍🦰":
            emojiToNumber.add(66);
            break;
          case "🔧":
            emojiToNumber.add(67);
            break;
          case "🍆":
            emojiToNumber.add(68);
            break;
          case "🍑":
            emojiToNumber.add(69);
            break;
          case "🔒":
            emojiToNumber.add(70);
            break;
          case "🎮":
            emojiToNumber.add(71);
            break;
          case "🏆":
            emojiToNumber.add(72);
            break;
          case "🙏":
            emojiToNumber.add(73);
            break;
          case "🤟":
            emojiToNumber.add(74);
            break;
          case "📍":
            emojiToNumber.add(75);
            break;
          case "🗺":
            emojiToNumber.add(76);
            break;
        }
      }

      for (var j = 0; j < emojiToNumber.length; j++) {
        switch (emojiToNumber[j]) {
          case 0:
            text.add("a");
            break;
          case 1:
            text.add("b");
            break;
          case 2:
            text.add("c");
            break;
          case 3:
            text.add("d");
            break;
          case 4:
            text.add("e");
            break;
          case 5:
            text.add("f");
            break;
          case 6:
            text.add("g");
            break;
          case 7:
            text.add("h");
            break;
          case 8:
            text.add("i");
            break;
          case 9:
            text.add("j");
            break;
          case 10:
            text.add("k");
            break;
          case 11:
            text.add("l");
            break;
          case 12:
            text.add("m");
            break;
          case 13:
            text.add("n");
            break;
          case 14:
            text.add("o");
            break;
          case 15:
            text.add("p");
            break;
          case 16:
            text.add("q");
            break;
          case 17:
            text.add("r");
            break;
          case 18:
            text.add("s");
            break;
          case 19:
            text.add("t");
            break;
          case 20:
            text.add("u");
            break;
          case 21:
            text.add("v");
            break;
          case 22:
            text.add("w");
            break;
          case 23:
            text.add("x");
            break;
          case 24:
            text.add("y");
            break;
          case 25:
            text.add("z");
            break;
          case 26:
            text.add("A");
            break;
          case 27:
            text.add("B");
            break;
          case 28:
            text.add("C");
            break;
          case 29:
            text.add("D");
            break;
          case 30:
            text.add("E");
            break;
          case 31:
            text.add("F");
            break;
          case 32:
            text.add("G");
            break;
          case 33:
            text.add("H");
            break;
          case 34:
            text.add("I");
            break;
          case 35:
            text.add("J");
            break;
          case 36:
            text.add("K");
            break;
          case 37:
            text.add("L");
            break;
          case 38:
            text.add("M");
            break;
          case 39:
            text.add("N");
            break;
          case 40:
            text.add("O");
            break;
          case 41:
            text.add("P");
            break;
          case 42:
            text.add("Q");
            break;
          case 43:
            text.add("R");
            break;
          case 44:
            text.add("S");
            break;
          case 45:
            text.add("T");
            break;
          case 46:
            text.add("U");
            break;
          case 47:
            text.add("V");
            break;
          case 48:
            text.add("W");
            break;
          case 49:
            text.add("X");
            break;
          case 50:
            text.add("Y");
            break;
          case 51:
            text.add("Z");
            break;
          case 52:
            text.add("0");
            break;
          case 53:
            text.add("1");
            break;
          case 54:
            text.add("2");
            break;
          case 55:
            text.add("3");
            break;
          case 56:
            text.add("4");
            break;
          case 57:
            text.add("5");
            break;
          case 58:
            text.add("6");
            break;
          case 59:
            text.add("7");
            break;
          case 60:
            text.add("8");
            break;
          case 61:
            text.add("9");
            break;
          case 62:
            text.add("!");
            break;
          case 63:
            text.add("?");
            break;
          case 64:
            text.add(",");
            break;
          case 65:
            text.add(".");
            break;
          case 66:
            text.add("+");
            break;
          case 67:
            text.add("-");
            break;
          case 68:
            text.add(" ");
            break;
          case 69:
            text.add("=");
            break;
          case 70:
            text.add("/");
            break;
          case 71:
            text.add("_");
            break;
          case 72:
            text.add("%");
            break;
          case 73:
            text.add("&");
            break;
          case 74:
            text.add("#");
            break;
          case 75:
            text.add(":");
            break;
          case 76:
            text.add("°");
            break;
        }
      }
      _outputController.text = text.join();
    } else {
      late var emojiList = parser.parseEmojis(_inputController.text);
      late List emojiToNumber = [];
      late List text = [];
      num sumKeyValue = 0; // sum key value from list
      String value = _keyController.text;
      Emoji emojiData = parser.getEmoji("${value}");
      String name = emojiData.name;
      List keyvalues = []; // list value keys
      for (var i = 0; i < emojiList.length; i++) {
        switch (emojiList[i]) {
          case "😎":
            emojiToNumber.add(0);
            break;
          case "☠":
            emojiToNumber.add(1);
            break;
          case "🤣":
            emojiToNumber.add(2);
            break;
          case "🍺":
            emojiToNumber.add(3);
            break;
          case "🗯":
            emojiToNumber.add(4);
            break;
          case "🆒":
            emojiToNumber.add(5);
            break;
          case "🌑":
            emojiToNumber.add(6);
            break;
          case "👻":
            emojiToNumber.add(7);
            break;
          case "😥":
            emojiToNumber.add(8);
            break;
          case "🚗":
            emojiToNumber.add(9);
            break;
          case "🎃":
            emojiToNumber.add(10);
            break;
          case "🤑":
            emojiToNumber.add(11);
            break;
          case "☢":
            emojiToNumber.add(12);
            break;
          case "🙁":
            emojiToNumber.add(13);
            break;
          case "🤬":
            emojiToNumber.add(14);
            break;
          case "🍶":
            emojiToNumber.add(15);
            break;
          case "🌻":
            emojiToNumber.add(16);
            break;
          case "🦿":
            emojiToNumber.add(17);
            break;
          case "💐":
            emojiToNumber.add(18);
            break;
          case "🩱":
            emojiToNumber.add(19);
            break;
          case "🎱":
            emojiToNumber.add(20);
            break;
          case "❗":
            emojiToNumber.add(21);
            break;
          case "🙄":
            emojiToNumber.add(22);
            break;
          case "❌":
            emojiToNumber.add(23);
            break;
          case "❤":
            emojiToNumber.add(24);
            break;
          case "🐥":
            emojiToNumber.add(25);
            break;
          case "🛥":
            emojiToNumber.add(26);
            break;
          case "🆔":
            emojiToNumber.add(27);
            break;
          case "🌡":
            emojiToNumber.add(28);
            break;
          case "🙊":
            emojiToNumber.add(29);
            break;
          case "📉":
            emojiToNumber.add(30);
            break;
          case "🐡":
            emojiToNumber.add(31);
            break;
          case "🧺":
            emojiToNumber.add(32);
            break;
          case "📏":
            emojiToNumber.add(33);
            break;
          case "🪓":
            emojiToNumber.add(34);
            break;
          case "🔨":
            emojiToNumber.add(35);
            break;
          case "🛡️":
            emojiToNumber.add(36);
            break;
          case "💦":
            emojiToNumber.add(37);
            break;
          case "🧰":
            emojiToNumber.add(38);
            break;
          case "💊":
            emojiToNumber.add(39);
            break;
          case "🚽":
            emojiToNumber.add(40);
            break;
          case "🔬":
            emojiToNumber.add(41);
            break;
          case "⚰️":
            emojiToNumber.add(42);
            break;
          case "♾️":
            emojiToNumber.add(43);
            break;
          case "🏫":
            emojiToNumber.add(44);
            break;
          case "💨":
            emojiToNumber.add(45);
            break;
          case "⛏":
            emojiToNumber.add(46);
            break;
          case "⚠️":
            emojiToNumber.add(47);
            break;
          case "💯":
            emojiToNumber.add(48);
            break;
          case "🥞":
            emojiToNumber.add(49);
            break;
          case "🍫":
            emojiToNumber.add(50);
            break;
          case "🛰":
            emojiToNumber.add(51);
            break;
          case "🦚":
            emojiToNumber.add(52);
            break;
          case "🕷":
            emojiToNumber.add(53);
            break;
          case "🍕":
            emojiToNumber.add(54);
            break;
          case "🌯":
            emojiToNumber.add(55);
            break;
          case "🚕":
            emojiToNumber.add(56);
            break;
          case "🏘":
            emojiToNumber.add(57);
            break;
          case "📡":
            emojiToNumber.add(58);
            break;
          case "🧂":
            emojiToNumber.add(59);
            break;
          case "🎴":
            emojiToNumber.add(60);
            break;
          case "😻":
            emojiToNumber.add(61);
            break;
          case "📸":
            emojiToNumber.add(62);
            break;
          case "📱":
            emojiToNumber.add(63);
            break;
          case "🙉":
            emojiToNumber.add(64);
            break;
          case "📣":
            emojiToNumber.add(65);
            break;
          case "👨‍🦰":
            emojiToNumber.add(66);
            break;
          case "🔧":
            emojiToNumber.add(67);
            break;
          case "🍆":
            emojiToNumber.add(68);
            break;
          case "🍑":
            emojiToNumber.add(69);
            break;
          case "🔒":
            emojiToNumber.add(70);
            break;
          case "🎮":
            emojiToNumber.add(71);
            break;
          case "🏆":
            emojiToNumber.add(72);
            break;
          case "🙏":
            emojiToNumber.add(73);
            break;
          case "🤟":
            emojiToNumber.add(74);
            break;
          case "📍":
            emojiToNumber.add(75);
            break;
          case "🗺":
            emojiToNumber.add(76);
            break;
        }
      }
      //Calculation of the key value
      for (var i = 0; i < name.length; i++) {
        switch (name[i]) {
          case "a":
            keyvalues.add(0);
            break;
          case "b":
            keyvalues.add(1);
            break;
          case "c":
            keyvalues.add(2);
            break;
          case "d":
            keyvalues.add(3);
            break;
          case "e":
            keyvalues.add(4);
            break;
          case "f":
            keyvalues.add(5);
            break;
          case "g":
            keyvalues.add(6);
            break;
          case "h":
            keyvalues.add(7);
            break;
          case "i":
            keyvalues.add(8);
            break;
          case "j":
            keyvalues.add(9);
            break;
          case "k":
            keyvalues.add(10);
            break;
          case "l":
            keyvalues.add(11);
            break;
          case "m":
            keyvalues.add(12);
            break;
          case "n":
            keyvalues.add(13);
            break;
          case "o":
            keyvalues.add(14);
            break;
          case "p":
            keyvalues.add(15);
            break;
          case "q":
            keyvalues.add(16);
            break;
          case "r":
            keyvalues.add(17);
            break;
          case "s":
            keyvalues.add(18);
            break;
          case "t":
            keyvalues.add(19);
            break;
          case "u":
            keyvalues.add(20);
            break;
          case "v":
            keyvalues.add(21);
            break;
          case "w":
            keyvalues.add(22);
            break;
          case "x":
            keyvalues.add(23);
            break;
          case "y":
            keyvalues.add(24);
            break;
          case "z":
            keyvalues.add(25);
            break;
          case "A":
            keyvalues.add(26);
            break;
          case "B":
            keyvalues.add(27);
            break;
          case "C":
            keyvalues.add(28);
            break;
          case "D":
            keyvalues.add(29);
            break;
          case "E":
            keyvalues.add(30);
            break;
          case "F":
            keyvalues.add(31);
            break;
          case "G":
            keyvalues.add(32);
            break;
          case "H":
            keyvalues.add(33);
            break;
          case "I":
            keyvalues.add(34);
            break;
          case "J":
            keyvalues.add(35);
            break;
          case "K":
            keyvalues.add(36);
            break;
          case "L":
            keyvalues.add(37);
            break;
          case "M":
            keyvalues.add(38);
            break;
          case "N":
            keyvalues.add(39);
            break;
          case "O":
            keyvalues.add(40);
            break;
          case "P":
            keyvalues.add(41);
            break;
          case "Q":
            keyvalues.add(42);
            break;
          case "R":
            keyvalues.add(43);
            break;
          case "S":
            keyvalues.add(44);
            break;
          case "T":
            keyvalues.add(45);
            break;
          case "U":
            keyvalues.add(46);
            break;
          case "V":
            keyvalues.add(47);
            break;
          case "W":
            keyvalues.add(48);
            break;
          case "X":
            keyvalues.add(49);
            break;
          case "Y":
            keyvalues.add(50);
            break;
          case "Z":
            keyvalues.add(51);
            break;
          case "0":
            keyvalues.add(52);
            break;
          case "1":
            keyvalues.add(53);
            break;
          case "2":
            keyvalues.add(54);
            break;
          case "3":
            keyvalues.add(55);
            break;
          case "4":
            keyvalues.add(56);
            break;
          case "5":
            keyvalues.add(57);
            break;
          case "6":
            keyvalues.add(58);
            break;
          case "7":
            keyvalues.add(59);
            break;
          case "8":
            keyvalues.add(60);
            break;
          case "9":
            keyvalues.add(61);
            break;
          case "!":
            keyvalues.add(62);
            break;
          case "?":
            keyvalues.add(63);
            break;
          case ",":
            keyvalues.add(64);
            break;
          case ".":
            keyvalues.add(65);
            break;
          case "+":
            keyvalues.add(66);
            break;
          case "-":
            keyvalues.add(67);
            break;
          case " ":
            keyvalues.add(68);
            break;
          case "=":
            keyvalues.add(69);
            break;
          case "/":
            keyvalues.add(70);
            break;
          case "_":
            keyvalues.add(71);
            break;
          case "%":
            keyvalues.add(72);
            break;
          case "&":
            keyvalues.add(73);
            break;
          case "#":
            keyvalues.add(74);
            break;
          case ":":
            keyvalues.add(75);
            break;
          case "°":
            keyvalues.add(76);
            break;
        }
      }
      //Totalization of the key value
      for (var i = 0; i < keyvalues.length; i++) {
        sumKeyValue = sumKeyValue + keyvalues[i];
      }

      //Decryption
      for (var i = 0; i < emojiToNumber.length; i++) {
        emojiToNumber[i] = (emojiToNumber[i] - sumKeyValue) % 77;
      }

      for (var j = 0; j < emojiToNumber.length; j++) {
        switch (emojiToNumber[j]) {
          case 0:
            text.add("a");
            break;
          case 1:
            text.add("b");
            break;
          case 2:
            text.add("c");
            break;
          case 3:
            text.add("d");
            break;
          case 4:
            text.add("e");
            break;
          case 5:
            text.add("f");
            break;
          case 6:
            text.add("g");
            break;
          case 7:
            text.add("h");
            break;
          case 8:
            text.add("i");
            break;
          case 9:
            text.add("j");
            break;
          case 10:
            text.add("k");
            break;
          case 11:
            text.add("l");
            break;
          case 12:
            text.add("m");
            break;
          case 13:
            text.add("n");
            break;
          case 14:
            text.add("o");
            break;
          case 15:
            text.add("p");
            break;
          case 16:
            text.add("q");
            break;
          case 17:
            text.add("r");
            break;
          case 18:
            text.add("s");
            break;
          case 19:
            text.add("t");
            break;
          case 20:
            text.add("u");
            break;
          case 21:
            text.add("v");
            break;
          case 22:
            text.add("w");
            break;
          case 23:
            text.add("x");
            break;
          case 24:
            text.add("y");
            break;
          case 25:
            text.add("z");
            break;
          case 26:
            text.add("A");
            break;
          case 27:
            text.add("B");
            break;
          case 28:
            text.add("C");
            break;
          case 29:
            text.add("D");
            break;
          case 30:
            text.add("E");
            break;
          case 31:
            text.add("F");
            break;
          case 32:
            text.add("G");
            break;
          case 33:
            text.add("H");
            break;
          case 34:
            text.add("I");
            break;
          case 35:
            text.add("J");
            break;
          case 36:
            text.add("K");
            break;
          case 37:
            text.add("L");
            break;
          case 38:
            text.add("M");
            break;
          case 39:
            text.add("N");
            break;
          case 40:
            text.add("O");
            break;
          case 41:
            text.add("P");
            break;
          case 42:
            text.add("Q");
            break;
          case 43:
            text.add("R");
            break;
          case 44:
            text.add("S");
            break;
          case 45:
            text.add("T");
            break;
          case 46:
            text.add("U");
            break;
          case 47:
            text.add("V");
            break;
          case 48:
            text.add("W");
            break;
          case 49:
            text.add("X");
            break;
          case 50:
            text.add("Y");
            break;
          case 51:
            text.add("Z");
            break;
          case 52:
            text.add("0");
            break;
          case 53:
            text.add("1");
            break;
          case 54:
            text.add("2");
            break;
          case 55:
            text.add("3");
            break;
          case 56:
            text.add("4");
            break;
          case 57:
            text.add("5");
            break;
          case 58:
            text.add("6");
            break;
          case 59:
            text.add("7");
            break;
          case 60:
            text.add("8");
            break;
          case 61:
            text.add("9");
            break;
          case 62:
            text.add("!");
            break;
          case 63:
            text.add("?");
            break;
          case 64:
            text.add(",");
            break;
          case 65:
            text.add(".");
            break;
          case 66:
            text.add("+");
            break;
          case 67:
            text.add("-");
            break;
          case 68:
            text.add(" ");
            break;
          case 69:
            text.add("=");
            break;
          case 70:
            text.add("/");
            break;
          case 71:
            text.add("_");
            break;
          case 72:
            text.add("%");
            break;
          case 73:
            text.add("&");
            break;
          case 74:
            text.add("#");
            break;
          case 75:
            text.add(":");
            break;
          case 76:
            text.add("°");
            break;
        }
      }
      _outputController.text = text.join();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Image.asset("mojicode.png"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "InPuT",
                      style: GoogleFonts.inconsolata(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _inputController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:
                                "Please enter the <MoJiCoDe> to decrypt or a text to encrypt.",
                            hintStyle: GoogleFonts.inconsolata(),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "KeY",
                      style: GoogleFonts.inconsolata(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (parser.hasEmoji("${value}") ||
                                parser.hasName("${value}")) {
                              return null;
                            } else if (value == "") {
                              return null;
                            } else {
                              return "Either there is no emoji or the used emoji is not valid, please try another one";
                            }
                          },
                          controller: _keyController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:
                                "Please enter the key for decrypting or encrypting if required.",
                            hintStyle: GoogleFonts.inconsolata(),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "OuTpUt",
                      style: GoogleFonts.inconsolata(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            // Text(_outputText),
                            TextField(
                          readOnly: true,
                          controller: _outputController,
                          minLines: 5,
                          maxLines: 10,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:
                                "This window will display either your decrypted code or your encrypted text.",
                            hintStyle: GoogleFonts.inconsolata(),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text("Emoji is valid!"),
                                          ),
                                        );
                                        _encrypt();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content:
                                                Text("Emoji is not valid!"),
                                          ),
                                        );
                                      }
                                    },
                                    child: Text(
                                      "EnCrYpT",
                                      style: GoogleFonts.inconsolata(),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text("Emoji is valid!"),
                                          ),
                                        );
                                        _decrypt();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content:
                                                Text("Emoji is not valid!"),
                                          ),
                                        );
                                      }
                                    },
                                    child: Text(
                                      "DeCrYpT",
                                      style: GoogleFonts.inconsolata(),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {
                                    _inputController.clear();
                                    _keyController.clear();
                                    _outputController.clear();
                                  },
                                  child: Text(
                                    "ReSeT",
                                    style: GoogleFonts.inconsolata(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "InFoRmAtIoN:",
                      style: GoogleFonts.inconsolata(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: SelectableText(
                        """A small exercise program that either encodes a text into emojis or translates a text consisting of emojis only. There is the possibility to use a key, which makes the encryption a little less comprehensible.
                        
The emojis used are fixed, but the key can be any emoji (as long as it is available in Unicode).
                        
The program still contains many bugs and is still under development. Please note that this code is not perfect and is not intended for public use, but is just my own gimmick.
                        
Try to decode this code: ♾️⚠️🕷⚰️♾️💨🙉🦚🚕🌯🔬🔬💨🕷💯🔬🔬🔬🔬🔬🙉

A key was used for encryption but which one remains a secret.
                        
A little hint: The code comes from the heart.""",
                        style: GoogleFonts.inconsolata(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
