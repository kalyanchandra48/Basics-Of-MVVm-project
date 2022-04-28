import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewmodel_basic/book.dart';
import 'package:viewmodel_basic/data.dart';

class ListViewModel extends ChangeNotifier {
  static ListViewModel of(BuildContext context) =>
      context.read<ListViewModel>();
  List<Book> books = ListData.getBook();

  List<Book> get someBook => books;

  List<Book> get bAlbhabet {
    List<Book> newBook =
        books.where((element) => element.name!.startsWith('B')).toList();
    return newBook;
  }
}
