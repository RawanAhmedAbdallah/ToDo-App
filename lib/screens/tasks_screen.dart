import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation:
        FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom
                    ),
                      child: AddTaskScreen((newTaskTitle){
                       // setState((){
                       //   tasks.add(Task(name: newTaskTitle));
                       //   Navigator.pop(context);
                       // });
                      }),),
              ),
          );
        },
             elevation: 0,
             highlightElevation: 0,
             backgroundColor: const Color(0xFFF56D91),
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
              ),
             child: const Icon(Icons.add),
      ),
      backgroundColor: const Color(0xFF92B4EC),
      body: Container(
        padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:[
                const Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Color(0xFFF9F3EE),
                   ),
                const SizedBox(width: 20),
                Text(
                  'ToDo',
                  style: GoogleFonts.poppins(
                      color: const Color(0xFFF9F3EE),
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: GoogleFonts.poppins(
              color: const Color(0xFFF9F3EE),
              fontSize: 18,
            ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF9F3EE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

