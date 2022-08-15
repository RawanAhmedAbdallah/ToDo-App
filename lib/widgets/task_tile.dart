import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final void Function(bool?) checkboxChange;
 final void Function() listTileDelete;


 TasksTile({Key? key,
   required this.isChecked,
   required this.taskTitle,
   required this.checkboxChange,
   required this.listTileDelete
 }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,

      style: GoogleFonts.poppins(
        //fontWeight: FontWeight.bold,
        //color: Color(0xFF1F4690),
        decoration: isChecked ? TextDecoration.lineThrough: null),
      ),
      trailing:Checkbox(
        activeColor: const Color(0xFFF56D91),
        value: isChecked,
        onChanged:checkboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}

