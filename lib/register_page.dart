import 'package:application_exo/text_field_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button_page.dart';
import 'connect_page.dart';
import 'cupertino_textfield.dart';
import 'calandar_page.dart';
import 'login_page.dart';
class Registerpage extends StatefulWidget {
  Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}
class _RegisterpageState extends State<Registerpage> {
   double MAX_SIZE = 20;
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
      return Color.fromARGB(255, 250, 250, 250);
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: MyAppBar(),
        body:Center (
          child: SingleChildScrollView(
            child: Container(
            height: 550,
            width: MediaQuery.of(context).size.width-30,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child:
                  Container(
                    padding:EdgeInsets.only(right: 10,left: 10) ,
                    height: 500,
                    width: MediaQuery.of(context).size.width-30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 78, 85),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(children: [
                            SizedBox(height:20),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 198, 6),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(child: 
                            Icon(Icons.person_outlined,color: Colors.white,size: 30,)
                            ),
                            ),
                            SizedBox(height:15),
                            Text('Creation de Compte',style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),),
                            SizedBox(height:35),
                    SizedBox(
                      height: 59,
                      child: TextfieldWidget(
                      hintText: 'Entrez votre Nom et Prenoms',
                      labelText: 'Nom et Prenoms',
                      icon1:null,
                      keyboard: TextInputType.text,
                      icon: null, obscureText: false,
                     ),
                   ),
                   SizedBox(height:15),
                   SizedBox(
                      height: 59,
                      child: TextfieldWidget(
                      hintText: 'Entrez votre  Email,',
                      labelText: 'Adresse E-mail',
                      icon1: null,
                      keyboard: TextInputType.text,
                      icon: null, obscureText: false,
                     ),
                   ),
                      SizedBox(height:15),
                          SizedBox(
                    height: 59,
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
                        Icons.edit,
                        size: 40,
                      ),
                      keyboard: TextInputType.text, obscureText:_secureText,
                    )),
                     SizedBox(height:25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 0,left: 10),
                        child: Text(
                          'Femme',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Checkbox(
                        checkColor: Color.fromARGB(255, 36, 40, 243),
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
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Checkbox(
                        checkColor: Color.fromARGB(255, 36, 40, 243),
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
                   SizedBox(height:24),
                    buttonWidget(
                  num2: 350,
                  Color: Color.fromARGB(255, 241, 198, 6),
                  saint: () {
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context){
                     return FirstScreens();
                   })
                   );
                  },
                  child: 'Continuer',
                ),
                ]),
               )
              )
              ],
            ),
        ),
          ),
        ),
      ),
    );
  }
}
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 25,
        ),
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return LoginPage();
          })
          );
        },
      ),
      title: Text('Creer un Compte',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
