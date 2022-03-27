import 'package:flutter/material.dart';
import 'package:animated_textformfields/animated_textformfields.dart';

class animated extends StatefulWidget {
  animated({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _animatedState createState() => _animatedState();
}

class _animatedState extends State<animated> with TickerProviderStateMixin {
  FocusNode myFocusNode = FocusNode();
  TextEditingController textEditingControllerAnimated =
      new TextEditingController();
  TextEditingController textEditingControllerLite = new TextEditingController();
  TextEditingController textEditingControllerSlideIn =
      new TextEditingController();

  @override
  void dispose() {
    textEditingControllerAnimated.dispose();
    textEditingControllerLite.dispose();
    textEditingControllerSlideIn.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Form'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
            //   child: Text(
            //     'Animated TextFields Form',
            //     style: TextStyle(
            //       fontSize: 24.0,
            //     ),
            //     maxLines: 3,
            //  ),
          ),
          AnimatedTextFormField(
            width: MediaQuery.of(context).size.width * 0.875,
            height: 48.0,
            inputType: TextInputType.text,
            hintText: "Name",
            controller: textEditingControllerAnimated,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            focusNode: myFocusNode,
            cornerRadius: BorderRadius.circular(14.0),
          ),
          CustomTextFormFieldLite(
            width: MediaQuery.of(context).size.width * 0.875,
            height: 48.0,
            inputType: TextInputType.text,
            hintText: "Password",
            controller: textEditingControllerLite,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            cornerRadius: BorderRadius.circular(14.0),
          ),
          SlideInTextFormField(
            vsync: this,
            width: MediaQuery.of(context).size.width * 0.875,
            height: 48.0,
            inputType: TextInputType.text,
            fieldText: "Address",
            controller: textEditingControllerSlideIn,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            cornerRadius: BorderRadius.circular(14.0),
          ),
          SlideInTextFormField(
            vsync: this,
            width: MediaQuery.of(context).size.width * 0.875,
            height: 48.0,
            inputType: TextInputType.text,
            fieldText: "Phone",
            controller: textEditingControllerSlideIn,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            cornerRadius: BorderRadius.circular(14.0),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 55.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // // It returns true if the form is valid, otherwise returns false
                  // if (_formKey.currentState.validate()) {
                  //   // If the form is valid, display a Snackbar.
                  //   Scaffold.of(context)
                  //       .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  // }
                },
              ))
        ],
      ),
    );
  }
}
