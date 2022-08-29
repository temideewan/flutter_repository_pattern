import 'package:repossitory_pattern/db/virtual_db.dart';
import 'package:repossitory_pattern/models/book.dart';
import 'package:repossitory_pattern/repositories/book.dart';

class HomeController {
  final BookRepository _bookRepo = BookRepository(VirtualDB());

  Future<List<Book>> getAllBooks() {
    return _bookRepo.getAllBooks();
  }

  Future<void> addBook(Book book) {
    return _bookRepo.insert(book);
  }

  Future<void> removeBook(int id) {
    return _bookRepo.delete(id);
  }
}
