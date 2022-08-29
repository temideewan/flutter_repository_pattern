class Book {
  final String title;
  final int? id;
  final int year;

  Book({required this.title, this.id, required this.year});

  Book.fromMap(Map<String, dynamic> data)
      : id = data['id'],
        year = data['year'],
        title = data['title'];

  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "year": year};
  }
}
