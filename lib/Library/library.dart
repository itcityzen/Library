import '../Book/book.dart';

class Library {
  static int totalBooks = 0;

  List<Book> mybooks = [];

  void addbooks(Book mybook) {
    mybooks.add(mybook);
    totalBooks++;
  }

  void getTotalBooks() {
    print(totalBooks);
  }

  void findBooksByTitle(String title) {
    for (Book T in mybooks) {
      if (T.title == title) {
        print(T.title);
      } else {
        print('Null');
      }
    }
  }

  void showAllBooks() {
    for (Book x in mybooks) {
      x.getdetails();
    }
  }

  Future fetchBooksFromServer() async {
    await Future.delayed(Duration(seconds: 2), () => print('fetched'));
    Book QQ = Book('ARrrr', 'TRR', 23);
    Book SEQ = Book('ARrrr', 'TRR', 23);
    mybooks.addAll([QQ, SEQ]);
    print('Success');
  }
}
