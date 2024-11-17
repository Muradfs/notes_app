import 'package:flutter/material.dart';
//import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
            // Spacer(), it is not allowed inside SingleChildScrollView
            SizedBox(
              height: 32,
            ),
            CustonBotton(),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
