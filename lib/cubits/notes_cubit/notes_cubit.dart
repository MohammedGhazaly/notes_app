import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;
  fetchAllNotes() {
    // var notesBox = Hive.box<NoteModel>(kNotesBox);
    // notesList = notesBox.values.toList();
    notesList = Hive.box<NoteModel>(kNotesBox).values.toList();
  }
}
