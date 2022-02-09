import 'package:application_exo/widget/text_field_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/button_page.dart';
import '../Pages/register_page.dart';


class MyAppe extends StatefulWidget {
  MyAppe({Key? key}) : super(key: key);

  @override
  State<MyAppe> createState() => _MyAppeState();
}

class _MyAppeState extends State<MyAppe> {
   double MAX_SIZE = 150;
   bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Container(
            padding: EdgeInsets.only(top: 6,left: 10,right: 10),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    ),
                width: 50,
                height: 50,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ]),
              ),
              Text(
                'Connexion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                  height: 75,
                  child: TextfieldWidget(
                    hintText: 'Entrez votre Pseudo ou Email,',
                    labelText: 'Pseudo or Email',
                    icon1: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    keyboard: TextInputType.text,
                    icon: null, obscureText: false,
                  )),
              //SizedBox(height: 20,),
              SizedBox(
                  height: 75,
                  child: TextfieldWidget(
                    hintText: 'Entrez votre Pseudo ou Email,',
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                        icon: Icon(_secureText ? Icons.remove_red_eye: Icons.remove_red_eye),
                        ),
                    labelText: 'Pseudo or Email',
                    icon1: Icon(
                      Icons.security_update,
                      size: 40,
                    ),
                    keyboard: TextInputType.text, obscureText:_secureText,
                  )),
              buttonWidget(
                num2: 350,
                Color: Colors.blue,
                saint: () {
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context){
                   return Registerpage();
                 })
                 );
                },
                child: 'Connexion',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Mot de passe oublie?',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20,left: 10),
                    child: Text(
                      'Pas de compte?',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Creer un compte',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
