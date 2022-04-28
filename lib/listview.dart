import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewmodel_basic/list_viewmodel.dart';

import 'book.dart';

class ListClass extends StatelessWidget {
  const ListClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ListViewModel(),
      builder: (context, _) => Scaffold(
        drawer: const BooksAll(),
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          centerTitle: true,
          title: const Text('Basic ViewModel For Books'),
        ),
        body: const ListViewBody(),
      ),
    );
  }
}

class ListViewBody extends StatelessWidget {
  const ListViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Book> newBook = ListViewModel.of(context).bAlbhabet;
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
          shape: const RoundedRectangleBorder(),
          color: Colors.blueGrey,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 120,
                width: 90,
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //     newBook[index].imageUrl!,
                  //   ),
                  // ),
                  //color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: newBook[index].imageUrl!,
                  placeholder: (context, url) =>
                      const CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Book' + index.toString()),
                  const SizedBox(
                    height: 19,
                  ),
                  Text(
                    newBook[index].name!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\$' + newBook[index].price.toString()),
                  Text(newBook[index].soldCount.toString())
                ],
              ),
            ],
          )),
      separatorBuilder: (context, index) => const SizedBox(
        height: 4,
      ),
      itemCount: newBook.length,
    );
  }
}

class ListofAllBooks extends StatelessWidget {
  const ListofAllBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ListViewModel(),
      builder: (context, _) => const BooksAll(),
    );
  }
}

class BooksAll extends StatelessWidget {
  const BooksAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Book> allBooks = ListViewModel.of(context).someBook;
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
          shape: const RoundedRectangleBorder(),
          color: Colors.blueGrey,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 120,
                width: 90,
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //     newBook[index].imageUrl!,
                  //   ),
                  // ),
                  //color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: allBooks[index].imageUrl!,
                  placeholder: (context, url) =>
                      const CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Book' + index.toString()),
                  Text(
                    allBooks[index].name!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\$' + allBooks[index].price.toString()),
                  Text(allBooks[index].soldCount.toString())
                ],
              ),
            ],
          )),
      separatorBuilder: (context, index) => const SizedBox(
        height: 4,
      ),
      itemCount: allBooks.length,
    );
  }
}
