import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));

}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  WidgetBuild(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
              child: Text("Welcome \nBack",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold))
          )

,          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50))
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "E-mail",

                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
suffixIcon:IconButton(onPressed:(){},icon: Icon(Icons.visibility),)
                  ),
                )

              ]
            )
          )
        ],
      ),
    );
  }
}