
import 'package:flutter/material.dart';
import 'package:m6d4t1/pages/signin_page.dart';

import 'home_page.dart';




class SignUpPage extends StatefulWidget {

  static const String id = 'signup_page';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignUpPage> {
  bool _showPassword = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doLogin(){
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;
    String password = passwordController.text;

    if(name.isNotEmpty && email.isNotEmpty && phone.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, top: 140, right: 20, bottom: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            const SizedBox(
              height: 30,
            ),

            const SizedBox(
                child: Text('  Create \nAccount', style: TextStyle(fontSize: 32, color: Colors.white),
                )
            ),


            const SizedBox(height: 60,),
            //Name
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

            //Email
            TextFormField(
              controller: emailController,
              cursorColor: Colors.blue,
              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              decoration:  const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                prefixIcon: Icon(Icons.email_outlined, color: Colors.grey,),
                hintText: ' E-Mail',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:  EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),

              ),

            ),
            const SizedBox(height: 20),

            //Phone
            TextFormField(
              controller: phoneController,
              cursorColor: Colors.blue,
              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              decoration:  const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                prefixIcon: Icon(Icons.phone, color: Colors.grey,),
                hintText: ' Phone Number',
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
              height: 70,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 17),),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignInPage.id);
                  },
                  child: const Text('SIGN IN',style: TextStyle(color: Colors.blue, fontSize: 17,fontWeight: FontWeight.bold),),
                ),

              ],
            )
          ],
        ),

      ),


    );
  }

}




