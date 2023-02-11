import 'package:flutter/material.dart';
import '../../../widgets/splashscreen.dart';
import '../widget/checkbox.dart';
import 'login.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Create account", 
        style: TextStyle(color: Colors.black),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios), color: Colors.black, onPressed: (() => Navigator.pop(context)),)
      ),
       body:SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget>[
                     Padding(padding: const EdgeInsets.only(top: 40),
                    
                     child: Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .90,
                       child: const TextField(
                        decoration: InputDecoration(
                          hintText: "  email",
                          suffixIcon:  Icon(Icons.email_outlined) ,
                        ),
                       ),
                     ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         padding: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * .90,
                         child: const TextField(
                          decoration: InputDecoration(
                            hintText: "  fullname",
                            suffixIcon:  Icon(Icons.person) ,
                          ),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         padding: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * .90,
                         child: const TextField(
                          decoration: InputDecoration(
                            hintText: "  password",
                            suffixIcon:  Icon(Icons.remove_red_eye_outlined) ,
                          ),
                         ),
                       ),
                     ),
                       Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         padding: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * .90,
                         child: const TextField(
                          decoration: InputDecoration(
                            hintText: "  confirm password",
                            suffixIcon:  Icon(Icons.remove_red_eye_outlined) ,
                          ),
                         ),
                       ),
                     )
                       ],
        ),
                 
        
         Row(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: const EdgeInsets.only(left: 3),
                  //check box
                  child: const CheckBox()),
              Container(
                margin: const EdgeInsets.only(right: 55),
                child: const Text(
                  'Remember me',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black45),
                ),
              ),
         ])]
    ),
          const SizedBox(height: 30,),
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

            const SizedBox(height: 30,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have account? ",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black),
            ),

            InkWell(
              child: const Text(
                'log in',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInView()),
                );
              },
            ),
          ],
        ),
       const SizedBox(height: 20),

     Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget> [
         Icon(Icons.facebook, color: Color.fromARGB(255, 15, 56, 128),),
         
      ],
     )
       ],
                ),
        ),
        )
    );
       
  }
}