import 'Book/book.dart';
import 'Library/library.dart';

void main() async {
  Book R = Book('Around W in 80 D', 'Robert Downey ', 1992);
  Book Q = Book('P of Zenda', 'Kun Aguero', 1990);
  Library W = Library();
  W.addbooks(R);
  W.addbooks(Q);

  W.getTotalBooks();
  R.isPublishedAfter(1992);
  await W.fetchBooksFromServer();
  W.showAllBooks();
}
