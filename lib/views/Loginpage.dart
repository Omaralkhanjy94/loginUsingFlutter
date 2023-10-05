import 'package:estorelogin/constants/colors.dart';
import 'package:estorelogin/widgets/customTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Sign In", style: TextStyle(
            color: Colors.yellow, fontSize: 60,
            fontStyle: FontStyle.italic, fontWeight: FontWeight.w900
          ),),
          SizedBox(height: 30,),
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CustomTextFormField(label: "Email",),
                SizedBox(height: 10,),
                CustomTextFormField(label: "Password",keyboardType: TextInputType.visiblePassword,),
                TextButton(onPressed: (){},
                    child: Container(
                      height: 40.5,width: 200,
                      constraints: BoxConstraints(
                        minHeight: 40,minWidth: 60

                      ),
                      margin: EdgeInsets.symmetric(horizontal: 4.5, vertical: 2),
                      padding: const EdgeInsets.symmetric(horizontal: 4.5,vertical: 1.1),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: const Center(child: Text("Log in", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ))
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("New Customer?",
                  style: TextStyle(fontSize: 14, color: Color(0xDEF8F8E9)),),
                TextButton(onPressed: (){
                  //todo: Create an account
                }, child: Text("Create an account",
                  style: TextStyle(fontSize: 14, color: linkColor,),)),
                ]
              ),
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [TextButton(onPressed: (){
                  //todo: Forgot password?"
                },
                    child: const Text("Forgot password?",
                      style: TextStyle(fontSize: 14, color: linkColor,),))],
              )
            ],
          ),


        ],
      ),
    );
  }
}
