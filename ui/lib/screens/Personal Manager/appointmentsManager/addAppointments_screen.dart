import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/custom_app_bar.dart';
import 'package:ui/components/rounded_button.dart';
import 'package:ui/screens/Personal%20Manager/medicationManager/api/medicationFirebaseAPI.dart';
import 'package:ui/screens/Personal%20Manager/medicationManager/models/medication_model.dart';

class AddAppointments extends StatefulWidget {

  AddAppointments(); // Constructor

  @override
  _AddAppointmentsState createState() => _AddAppointmentsState();
}

class _AddAppointmentsState extends State<AddAppointments> {

  // Variables used within file
  String _medicationId = "";
  String _medicationName = "";
  String _medicationDose = "";
  String _medicationTime = "";

  FocusNode _nameFocus;
  FocusNode _doseFocus;
  FocusNode _timeFocus;

  @override
  void initState() {

    // initializing focus nodes
    _nameFocus = FocusNode();
    _doseFocus = FocusNode();
    _timeFocus = FocusNode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.arrow(context),
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            bottom: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                "Add Medication",
                              style: TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20,
                              right: 20
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter the details of the Appointment",
                              style: TextStyle(
                                  fontFamily: 'Poppins-SemiBold',
                                  fontSize: 13.0,
                                  color: Color(0xFF3C707B)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                        child:Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 0
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              // color: Color(0xFF57994D)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:8.0),
                              child: Container(

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xFFEEEEEE)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left:18,
                                              top:5,
                                              bottom: 10,
                                              right: 10
                                          ),
                                          child: TextField(
                                            maxLength: 20,
                                            onChanged: (value) async{
                                              //Check if the field is not empty
                                              if(value !="") {
                                                setState(() {
                                                  _medicationName = value;
                                                });
                                                _doseFocus.requestFocus(); // to move focus to description node
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Name of Doctor", // temporary text
                                              border:InputBorder.none,
                                            ),
                                            style: TextStyle( // text style
                                              fontSize: 15,
                                              fontFamily: 'Poppins-Semibold',
                                              color:Color(0xFF1F1F1F),
                                            ),),
                                        ),
                                      ),

                                    SizedBox(
                                      height: 11,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xFFEEEEEE)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left:18,
                                            top:5,
                                            bottom: 10,
                                            right: 10
                                        ),
                                        child: TextField(
                                          maxLength: 15,
                                          onChanged: (value) async{
                                            //Check if the field is not empty
                                            if(value !="") {
                                              setState(() {
                                                _medicationDose = value;
                                              });
                                              _timeFocus.requestFocus(); // to move focus to description node
                                            }
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Notes", // temporary text
                                            border:InputBorder.none,
                                          ),
                                          style: TextStyle( // text style
                                            fontSize: 15,
                                            fontFamily: 'Poppins-Semibold',
                                            color:Color(0xFF1F1F1F),
                                          ),),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 11,
                                    ),

                                    GestureDetector(
                                      onTap: () async {

                                        final DateTime newDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime(2022),
                                        helpText: 'Select a date',);
                                        },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff01CDFA),
                                          borderRadius: BorderRadius.circular(18),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                                          child: Center(
                                            child: Text(
                                              "Set Date",
                                              style: TextStyle( // text style
                                                fontSize: 15,
                                                fontFamily: 'Poppins-Semibold',
                                                color:Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    GestureDetector(
                                      onTap: () async {

                                        final DateTime newDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2022),
                                          helpText: 'Select a date',);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff01CDFA),
                                          borderRadius: BorderRadius.circular(18),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),

                                          child: Center(
                                            child: Text(
                                              "Set Time",
                                              style: TextStyle( // text style
                                                fontSize: 15,
                                                fontFamily: 'Poppins-Semibold',
                                                color:Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        if(_medicationName !="") {
                                          Medication _newMedication = Medication(
                                            medicationName: _medicationName,
                                            dosage: _medicationDose,
                                            doseTime: _medicationTime,
                                          );
                                          MedicationFirebaseApi.createMedication(_newMedication);
                                        }
                                        Navigator.pop(context);
                                      },
                                      child: Center(
                                        child: Container(
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE84848),
                                            borderRadius: BorderRadius.circular(18),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top:20,
                                              bottom: 20
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Add Appointment",
                                                style: TextStyle( // text style
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins-Semibold',
                                                  color:Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
