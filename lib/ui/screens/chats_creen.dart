import 'dart:ui';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Screen"),
        toolbarHeight: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 150, right: 40),
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.all(3.2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.grey,
                            width: 3.0,
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            _messages[index],
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            _Row(
              textEditingController: _textEditingController,
              onSendMessage: () {
                setState(() {
                  _messages.add(_textEditingController.text);
                  _textEditingController.clear();
                });
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final TextEditingController textEditingController;
  final VoidCallback onSendMessage;

  const _Row({
    Key? key,
    required this.textEditingController,
    required this.onSendMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "Enter your message",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      // borderSide: const BorderSide(

                      //   width: 2.0,
                      // ),
                    ),
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 3,
                  expands: false,
                ),
              ),
            ),
            IconButton(
              onPressed: onSendMessage,
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ],
    );
  }
}
