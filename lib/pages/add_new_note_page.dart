import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/note_controller.dart';

class AddNewNotePage extends StatelessWidget {
  final NoteController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          "Add New Note",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue[300],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              TextField(
                controller: controller.titleController,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "Title",
                  hintStyle: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1,
                  ),
                  border: InputBorder.none,
                ),
              ),
              TextField(
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: controller.contentController,
                decoration: InputDecoration(
                  hintText: "Content",
                  hintStyle: TextStyle(
                    fontSize: 22,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addNoteToDatabase();
        },
        child: Icon(
          Icons.check,
        ),
      ),
    );
  }
}
