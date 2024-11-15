import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottn_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder: (context) {
                return const AddNoteBottonSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesVeiwBody(),
    );
  }
}
