import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _register_viewState();
}

class _register_viewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Register.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top : 130),
              child: Text(
                  'Welcome \n Back',
                  style: TextStyle(color: Colors.white, fontSize: 35)),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                          decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In', style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 30, fontWeight: FontWeight.w700
                        ), ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          //   return RegisterView();
                          // }),);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterView()));



                        },
                          child: Text('Sign Up', style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                          ),
                        ),

                        TextButton(onPressed: (){


                        }, child: Text('Forgot Password', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xff4c505b),
                        ),
                        ),
                        ),

                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
