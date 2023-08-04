import 'dart:io';

class Task {
  String title;
  String description;
  DateTime duedate;
  bool status;

  Task(this.title, this.description, this.duedate, this.status);

  @override
  String toString() {
    return ('Title : $title\n Description : $description\n Due Date : $duedate\n Status : ${status ? "Completed" : "Pending"}');
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void viewAllTasks() {
    if (tasks.isEmpty) {
      print("There are no tasks.");
    } else {
      for (Task task in tasks) {
        print(task);
      }
    }
  }

  void viewCompletedTasks() {
    List<Task> completedTasks = tasks.where((task) => task.status).toList();
    if (completedTasks.isEmpty) {
      print("There are no tasks that are completed");
    } else {
      for (Task task in completedTasks) {
        print(task);
      }
    }
  }

  void viewPendingTasks() {
    List<Task> pendingTasks = tasks.where((task) => !task.status).toList();
    if (pendingTasks.isEmpty) {
      print("There are no pending tasks");
    } else {
      for (Task task in pendingTasks) {
        print(task);
      }
    }
  }

  void editTask(int index,
      {String? title, String? description, DateTime? dueDate, bool? status}) {
    if (index >= 0 && index < tasks.length) {
      Task task = tasks[index];
      task.title = title ?? task.title;
      task.description = description ?? task.description;
      task.duedate = dueDate ?? task.duedate;
      task.status = status ?? task.status;
      print("The task has been edited successfully.");
    } else {
      print("Invalid task index.");
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print("Task deleted successfully.");
    } else {
      print("Invalid task index.");
    }
  }
}

void main() {
  TaskManager taskManager = TaskManager();

  while (true) {
    print('\n');4
    print('            TASK MANAGER');
    print('====================================');
    print('1. Add a new taks');
    print('2. View all tasks');
    print('3. View completed tasks');
    print('4. View pending tasks');
    print('5. Edit a task');
    print('6. Delete a task');

    var input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        print('Task title: ');
        var title = stdin.readLineSync()!;
        print('Task description: ');
        var description = stdin.readLineSync()!;
        print('Enter due date, use the format (yyyy-mm-dd): ');
        var duedate = DateTime.parse(stdin.readLineSync()!);
        taskManager.addTask(Task(title, description, duedate, false));
        print('Task has been added successfully.');
        break;

      case 2:
        taskManager.viewAllTasks();
        break;

      case 3:
        taskManager.viewCompletedTasks();
        break;

      case 4:
        taskManager.viewPendingTasks();
        break;

      case 5:
        print('Task index to be edited: ');
        var taskIndex = int.parse(stdin.readLineSync()!);
        taskIndex -= 1;
        print('Enter new task title: ');
        var nTitle = stdin.readLineSync()!;
        print(
            'Enter new task description (press enter to keep the current description): ');
        var nDes = stdin.readLineSync()!;
        print('Enter new due date (yyyy-mm-dd)');
        var nDue = stdin.readLineSync()!;
        DateTime? dueDate;
        if (nDue.isNotEmpty) {
          dueDate = DateTime.parse(nDue);
        }
        stdout.write('Is the task completed? (True or False): ');
        var nstatus = stdin.readLineSync()!;
        var stat = nstatus.toLowerCase().startsWith('t');
        taskManager.editTask(taskIndex,
            title: nTitle, description: nDes, dueDate: dueDate, status: stat);
        break;
      case 6:
        stdout.write('Enter the task index to delete: ');
        var taskIndexToDelete = int.parse(stdin.readLineSync()!);
        taskIndexToDelete -= 1;
        taskManager.deleteTask(taskIndexToDelete);
        break;

      default:
        print('Enter valid option');
        continue;
    }
  }
}
