import 'package:flutter/material.dart';
import 'package:untitled4/Views/MovieSelectionScrean.dart';
class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("wellcome"),
          SizedBox(height: 15,),
          TextField(
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              label: Text("user name"),
              hintText: 'Mohamed',
              prefixIcon: Icon(Icons.person),
            ) ,
          ),
          SizedBox(height:17 ,),
          TextField(
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              label: Text("Emai"),
              hintText: 'Mohamed@yahoo.com',
              prefixIcon: Icon(Icons.email),
            ) ,
          ),
          SizedBox(height: 17,)    ,
          TextField(
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              label: Text("password"),
              hintText: '*****',
            ) ,
          ),
          SizedBox(height: 17,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,

                  MaterialPageRoute(builder:
                  (context)=> Movieselectionscrean(),
                  ),
              );
            },
            child: Text('Log in'),
          ),
        ],
      ),
    );

  }
}
