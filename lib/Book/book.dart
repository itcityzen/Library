class Book {
  String? title;
  String? author;
  int? year;

  Book(String title, String author, int year) {
    this.title = title;
    this.author = author;
    this.year = year;
  }

  bool? isPublishedAfter(int? year) {
    if (year! <= this.year!) {
      print(true);
    } else {
      print(false);
    }
  }

  void getdetails() {
    print('$title by $author published in $year');
  }
}
