import 'package:flutter/material.dart';

class q12 extends StatefulWidget {
  const q12({super.key});

  @override
  State<q12> createState() => _q12State();
}

class _q12State extends State<q12> {
  bool isSwicthed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwicthed ? Colors.green : Colors.red,
      appBar: AppBar(title: Text("Toggle background color")),

      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(isSwicthed? "ON":"OFF"),
           

            Switch(
              value: isSwicthed,
              onChanged: (value) {
                setState(() {
                  if (isSwicthed == false) {
                    isSwicthed = true;
                  } else if (isSwicthed == true) {
                    isSwicthed = false;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
