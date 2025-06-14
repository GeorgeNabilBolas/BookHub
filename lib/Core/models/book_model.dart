class BookModel {
  const BookModel({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.raiting,
  });

  final String title;
  final String subTitle;
  final double price;
  final Raiting raiting;
  final String image;
  final String id;
}

class Raiting {
  const Raiting({
    required this.rate,
    required this.count,
  });

  final num rate;
  final num count;
}
