class BookItem {
  BookItem({
    required this.title,
    required this.date,
    this.isExpanded = false,
    this.minDateTime,
    this.maxDateTime,
  });
  final String title;
  DateTime date;
  bool isExpanded;
  DateTime? minDateTime;
  DateTime? maxDateTime;
}
