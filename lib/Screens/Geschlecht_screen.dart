import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class GeschlechtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Column(
        children: [
          BasisSeiteGross(),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Ich bin:',
                    style: TextStyle(
                      fontSize: 25,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'männlich',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      color: Color.fromRGBO(14, 209, 149, 1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'weiblich',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      color: Color.fromRGBO(12, 160, 183, 1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
