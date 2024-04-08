// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePromptScreen extends StatefulWidget {
  const CreatePromptScreen({super.key});

  @override
  State<CreatePromptScreen> createState() => _CreatePromptScreenState();
}

class _CreatePromptScreenState extends State<CreatePromptScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Generating Images🚀'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.deepOrange,
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Text'),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(22)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 28,
                    width: double.maxFinite,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
                      ),
                        onPressed: () {},
                        icon: Icon(Icons.generating_tokens),
                        label: Text('Generate'),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
