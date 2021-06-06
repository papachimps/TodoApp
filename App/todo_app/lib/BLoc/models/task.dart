class Task {
  String taskId;
  List<Task> task;
  String title;
  String note;
  DateTime timeToComplete;
  DateTime deadline;
  bool isCompleted;
  String repeats;
  List<DateTime> reminders;

  Task({
    this.taskId,
    this.title,
    this.isCompleted,
  });
}
