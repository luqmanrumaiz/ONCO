import 'package:flutter/material.dart';

class TreatmentCard extends StatelessWidget {
  final String cardTitle;

  const TreatmentCard({@required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFC6E7EE), Color(0xFF48cea4)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(18)
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(18),
          // ),
        ),
        padding: EdgeInsets.only(top: 100, left: 25),
        width: 322.0,
        height: 150,
        child: Text(
          cardTitle,
          style: TextStyle(
            fontSize: 23.0,
            color: Color(0xFF63888F),
            fontFamily: 'Poppins-SemiBold',
          ),
        ),
      ),
    );
  }
}
