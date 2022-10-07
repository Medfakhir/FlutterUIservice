import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

enum SingingCharacter { AfterService, Card, Paypal }

class _ServiceState extends State<Service> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController _controller = new TextEditingController();
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput2 = TextEditingController();
  SingingCharacter? _character = SingingCharacter.AfterService;

  var items = [
    'housekeeper',
    'Being a lot smarter',
    'Being a self-starter',
    'Placed in charge of trading charter'
  ];

  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        // ignore: prefer_const_constructors
                        image: DecorationImage(
                            // ignore: prefer_const_constructors
                            image: AssetImage("assets/profile.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 5,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Mohamed Fakhir",
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            // ignore: prefer_const_constructors
            Center(
              // ignore: prefer_const_constructors
              child: Text(
                "Demanded Commend",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true, //<-- SEE HERE
                            fillColor: Color(0xffA67458),
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            labelText: 'Services',
                            hintText: 'Enter Your Service',
                          ),
                        )),
                        PopupMenuButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          onSelected: (String value) {
                            _controller.text = value;
                          },
                          itemBuilder: (BuildContext context) =>
                              items.map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: Text(value), value: value);
                          }).toList(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:
                          dateinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xffA67458),

                        labelText: 'start date',
                        hintText: 'Enter date',
                        suffix: Icon(Icons.calendar_today),

                        //label text of field
                      ),

                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller:
                          dateinput2, //editing controller of this TextField
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xffA67458),

                        labelText: 'end date',
                        hintText: 'Enter date',
                        suffix: Icon(Icons.calendar_today),

                        //label text of field
                      ),

                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput2.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                        ),

                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xffA67458),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          labelText: 'duration',
                          hintText: 'Enter Your duration',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),

                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xffA67458),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          labelText: 'Total Pay',
                          hintText: '0.0',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text(
                        "Method the Payment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    RadioListTile<SingingCharacter>(
                      title: const Text('Payment after the service'),
                      value: SingingCharacter.AfterService,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    RadioListTile<SingingCharacter>(
                      title: const Text('Payment Credit Cart'),
                      value: SingingCharacter.Card,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    RadioListTile<SingingCharacter>(
                      title: const Text('Payment Paypal'),
                      value: SingingCharacter.Paypal,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          print("Validated");
                        } else {
                          print("Not Validated");
                        }
                      },
                      child: Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff3E848C),
                            borderRadius: BorderRadius.circular(30)),
                        // ignore: prefer_const_constructors
                        child: Center(
                          // ignore: prefer_const_constructors
                          child: Text(
                            "Command",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
