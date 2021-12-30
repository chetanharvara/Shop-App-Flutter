import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tryapp2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeBotton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeBotton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changeBotton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image.asset("assets/images/Login_Img.png", fit: BoxFit.cover,),
              SizedBox(
                height: 20.0,
              ),
              Text("Welcome $name", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "Enter Username"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username Cannot be Empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name=value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Passowrd"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password Cannot be Empty";
                        }
                        else if (value.length < 6){
                          return "Password Length Should Be Atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    Material(
                      color: Colors.yellow,
                        borderRadius: BorderRadius.circular(changeBotton ? 50: 9),
                      child: InkWell(
                        onTap: () =>moveToHome(context),

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeBotton ? 50: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeBotton ? Icon(Icons.done, color: Colors.black,): Text("Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )

                    // ElevatedButton(onPressed: (){
                    //   Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    // },
                    //     style: TextButton.styleFrom(
                    //       minimumSize: Size(150, 50)
                    //     ),
                    //     child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
