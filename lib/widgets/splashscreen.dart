import 'package:flutter/material.dart';
import 'package:moneyapp/views/authentificate/view/login.dart';
import 'package:moneyapp/views/authentificate/view/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30), 
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children:const<Widget> [
                 Text("MBOA MONEY", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                  
                  ),
               ],
             ),
              ),
              const SizedBox(height: 15,),
                 const Image(image: AssetImage("assets/logo.jpg"), width: 200, height: 200,),
              
              const SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              
               children:const<Widget> [
                
                 Text("La meilleur application de transfert d’argent de part le monde", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal ),
                  
                  ),]
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
             
              child: TextButton(  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInView())) ,
              child: const Text("Continuer", style: TextStyle(color: Colors.white,),
              
              ),
              ),
            ),
            
             Container(
              margin: const EdgeInsets.only(top: 5),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                
                 children:<Widget> [
                  
                   const Text("Avez vous un compte? ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal ),
                   
                    ),
                     InkWell(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () => Navigator.push (
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupView()
                          )
                          ),
                      ),
                    ]
            ),
             ),
            const SizedBox(height: 5,),
          ],
        )
        );
      
     
    
  }
}