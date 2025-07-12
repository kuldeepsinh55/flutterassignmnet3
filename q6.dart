import 'package:flutter/material.dart';

class q6 extends StatefulWidget {
  const q6({super.key});

  @override
  State<q6> createState() => _q6State();
}

class _q6State extends State<q6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile card")),

      body: Center(
        child: Container(
        
          height: 400,
          width: 400,
          child: Card(
            elevation: 14,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12)
            ),
        
            color: const Color.fromARGB(255, 229, 171, 94),
          
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                    radius: 29,
                    child: Icon(Icons.person,size: 40,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Kuldeepsinh Jadeja",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue[900],),
                  ))
                  
                  
                    ],
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.only(top: 44.0),
                 child: Column(
                  children: [
                    Text("⚡ Breaking code since 2019."),
                    Text("💻 Fluent in Flutter & Typo Correction."),
                    Text("☕ Runs on coffee and deadlines."),
                    Text("🤷‍♂️ Currently accepting bug reports and compliments."),
                    Text("😂 If app crashes, blame the backend. ")
                  ],
                 ),
               )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
