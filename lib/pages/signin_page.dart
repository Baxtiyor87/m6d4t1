
import 'package:flutter/material.dart';
import 'package:m6d4t1/pages/signup_page.dart';

import 'home_page.dart';



class SignInPage extends StatefulWidget {

  static const String id = 'signin_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SignInPage> {
  bool _showPassword = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doLogin(){
    String name = nameController.text;
    String password = passwordController.text;

    if(name.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, top: 150, right: 20, bottom: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Container(
              width: 70,
             height: 70,

                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                    image: AssetImage('assets/images/One.jpeg'),

                  ),
                ),
              ),

            const SizedBox(
              height: 30,
            ),

            const SizedBox(
                child: Text('Welcome Back!', style: TextStyle(fontSize: 32, color: Colors.white),
                )
            ),
            const SizedBox(height: 8,),
            const Text("Sign in to continue",
                style: TextStyle(fontSize: 20,color: Colors.white)),

            const SizedBox(height: 40,),
            //Email
            TextFormField(
              controller: nameController,
              cursorColor: Colors.blue,
              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              decoration:  const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                prefixIcon: Icon(Icons.person_3_outlined, color: Colors.grey,),
                hintText: ' User Name',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:  EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),

              ),

            ),
            const SizedBox(height: 20),
            //Password
            TextFormField(
              obscureText: !_showPassword,
              controller: passwordController,
              cursorColor: Colors.blue,
              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: ' Password',
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding:  const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                prefixIcon: const Icon(Icons.key, color: Colors.grey,),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye, color: _showPassword ? Colors.blue: Colors.grey,),
                  onPressed: (){
                    setState(() => _showPassword = !_showPassword);
                  },
                ),


              ),
            ),
            const SizedBox(
              height: 20,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){

                },
                  child:  const Text("Forgot Password?", style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 75,
              width: 75,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient:  LinearGradient(
                    begin: Alignment.bottomLeft,
                    end:  const Alignment(2.9, 0.6),
                    colors: [
                      Colors.blueAccent.shade700,
                      Colors.white
                    ]
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.57),
                      blurRadius: 50
                    )
                  ]
                ),
                child:ElevatedButton(
                    onPressed: () {
                      _doLogin();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,

                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Icon(Icons.arrow_forward,color: Colors.white,size: 50,)
                ),
              )


            ),
            const SizedBox(
              height: 115,
            ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 17),),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, SignUpPage.id);
                        },
                        child: const Text('SIGN UP',style: TextStyle(color: Colors.blue, fontSize: 17,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  )
          ],
        ),

      ),


    );
  }

}




