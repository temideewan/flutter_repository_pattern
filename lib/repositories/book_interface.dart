import '../models/book.dart';

abstract class IBookRepository {
  Future<List<Book>> getAllBooks();
  Future<Book?> getOneBook(int id);
  Future<void> insert(Book book);
  Future<void> update(Book book);
  Future<void> delete(int id);
}
