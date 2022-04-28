import 'book.dart';

class ListData {
  static getBook() {
    return [
      Book(
        id: 1,
        name: 'Apple Book',
        price: 400,
        soldCount: 2110,
        imageUrl:
            'https://booksaroundthetable.files.wordpress.com/2016/06/img_1930.jpg',
      ),
      Book(
        id: 2,
        name: 'Borrower',
        price: 40110,
        soldCount: 220,
        imageUrl:
            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1573742414l/52762903.jpg',
      ),
      Book(
        id: 3,
        name: 'Bad Boy',
        price: 4020,
        soldCount: 220,
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/I/51ezMkV54sL._SX252_BO1,204,203,200_.jpg',
      ),
      Book(
        id: 4,
        name: 'Batty',
        price: 42300,
        soldCount: 210,
        imageUrl:
            'https://images.squarespace-cdn.com/content/v1/572d25ecd210b899879359a5/1520211626655-9NWPNRD4A3ZK75TRXEP1/Book-Google-AdWords-Google-Analytics.jpg?format=1500w',
      ),
      Book(
        id: 5,
        name: 'Boeboy',
        price: 421200,
        soldCount: 220,
        imageUrl:
            'https://images.booksense.com/images/034/138/9781914138034.jpg',
      ),
      Book(
        id: 6,
        name: 'BomeBoy',
        price: 4121200,
        soldCount: 230,
        imageUrl: 'https://itbook.store/img/books/9781098118952.png',
      )
    ];
  }
}
