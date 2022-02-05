import 'package:application_exo/text_field_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button_page.dart';
import 'connect_page.dart';


class MyAppes extends StatefulWidget {
  MyAppes({Key? key}) : super(key: key);

  @override
  State<MyAppes> createState() => _MyAppesState();
}

class _MyAppesState extends State<MyAppes> {
   double MAX_SIZE = 30;
   bool _secureText = true;
   bool isChecked = false;
   bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromARGB(255, 111, 54, 244);
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(235, 255, 255, 255),
          elevation: 0,
        ),
        body: Container(
          child: Container(
            //color: Colors.blueAccent,
            padding: EdgeInsets.only(top: 10,left: 20,right: 20),
            child: Column(children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 300),
                      child: IconButton (
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                           return MyAppe();
                        }));
                        },
                         iconSize: MAX_SIZE,
                      ),
                    ),
                  ],
                ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    ),
                width: 120,
                height: 120,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ]),
              ),
              Text(
                'Creation de Compte',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                  height: 75,
                  child: TextfieldWidget(
                    hintText: 'Entrez votre Nom et Prenoms',
                    labelText: 'Nom et Prenoms',
                    icon1: null,
                    keyboard: TextInputType.text,
                    icon: null, obscureText: false,
                  )),
                  SizedBox(
                  height: 75,
                  child: TextfieldWidget(
                    hintText: 'Entrez votre Adresse Email',
                    labelText: 'Adresse Email',
                    icon1: null,
                    keyboard: TextInputType.text,
                    icon: null, obscureText: false,
                  )),
              //SizedBox(height: 20,),
              SizedBox(
                  height: 75,
                  child: TextfieldWidget(
                    hintText: 'Entrez votre Mot de Passe,',
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                        icon: Icon(_secureText ? Icons.remove_red_eye: Icons.remove_red_eye),
                        ),
                    labelText: 'Mot de passe',
                    icon1: Icon(
                      Icons.security_update,
                      size: 40,
                    ),
                    keyboard: TextInputType.text, obscureText:_secureText,
                  )),
              SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 0,left: 10),
                    child: Text(
                      'Femme',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.only(right: 0,left: 10),
                    child: Text(
                      'Homme',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                ],
              ),
              buttonWidget(
                num2: 332,
                Color: Colors.blue,
                saint: () {
                  //Registerpage();
                },
                child: 'Continuer',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
