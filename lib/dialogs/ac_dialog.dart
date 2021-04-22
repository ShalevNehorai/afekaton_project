import 'package:flutter/material.dart';

class AcDialog extends StatefulWidget {
  @override
  _AcDialogState createState() => _AcDialogState();
}

class _AcDialogState extends State<AcDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
