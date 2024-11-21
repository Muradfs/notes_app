import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteIntial());
}

addNote(NoteModel note) async {
  emit(AddNoteLoading());
  try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNoteSuccess());
    await notesBox.add(note);
  } catch (e) {
    AddNoteFailure(e.toString());
  }
}
