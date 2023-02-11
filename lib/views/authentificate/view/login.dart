
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:moneyapp/views/authentificate/view/signup.dart';
import 'package:moneyapp/widgets/splashscreen.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  // This function will be triggered when the button is pressed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(" LOG IN ", 
        style: TextStyle(color: Colors.black),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios), color: Colors.black, onPressed: (() => Navigator.pop(context)),)
      ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Image(image: AssetImage("assets/logIMG.jpg"),
                       width: 200,
                       height: 200,),
                     ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget>[
                     Padding(padding: const EdgeInsets.only(top: 20),
                    
                     child: 
                      Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .90,
                       child: const TextField(
                        decoration: InputDecoration(
                          hintText: "  email",
                          hintStyle: TextStyle(color: Colors.black26),
                          suffixIcon:  Icon(Icons.email_outlined) ,
                        ),
                       ),
                     ),
                     ),
                     Container(
                       padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .90,
                       child: const TextField(
                        decoration: InputDecoration(
                          hintText: "  password",
                          hintStyle: TextStyle(color: Colors.black26),
                          suffixIcon:  Icon(Icons.remove_red_eye_outlined) ,
                        ),
                       ),
                     )
                       ],
        ),
                 
        
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  child: const Text(
                    textAlign: TextAlign.end,
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ForgotPwd()),
                    // );
                  },
                ),
            ],
          ),
           const SizedBox(height: 20,),
        Container(
              width: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
             
              child: TextButton(  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashScreen())) ,
              child: const Text("Connect", style: TextStyle(color: Colors.white,),
              
              ),
              ),
            ),
            const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //login title
            const Text(
              "Don't have an account? ",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black),
            ),

            InkWell(
              child: const Text(
                'Create account',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupView()),
                );
              },
            ),
          ],
        ),

       
       const SizedBox(height: 20),

     
       ],
                ),
        ),
        )
    );
  }
}

