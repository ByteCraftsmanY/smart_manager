class TaskModel {
  String catagery;
  String title;
  String description;
  String date;
  int total;
  int completed;
  TaskModel({
    required this.catagery,
    required this.date,
    required this.description,
    required this.title,
    required this.total,
    required this.completed,
  });
}
