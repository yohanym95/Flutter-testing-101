import 'package:flutter/material.dart';
import 'package:widget_testing_101/logic/reverse.dart';

class ReverseWidget extends StatefulWidget {
  @override
  _ReverseWidgetState createState() => _ReverseWidgetState();
}

class _ReverseWidgetState extends State<ReverseWidget> {
  TextEditingController _controller;
  String _reversed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Reverse'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter string to reverse"),
            ),
            const SizedBox(height: 10.0),
            if (_reversed != null) ...[
              Text(
                _reversed,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
            ],
            RaisedButton(
              child: Text("Reverse"),
              onPressed: () {
                if (_controller.text.isEmpty) return;
                setState(() {
                  _reversed = new Reverse().reverseString(_controller.text);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  
}
