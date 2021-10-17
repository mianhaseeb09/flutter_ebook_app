class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imUrl;
  num score;
  num rating;
  String review;
  num height;

  Book(this.type, this.name, this.publisher, this.date, this.imUrl, this.score,
      this.rating, this.review, this.height);
  static List<Book> generateBooks() {
    return [
      Book(
          'History',
          'This is the way',
          ' istudio',
          DateTime(2020, 3, 23),
          'assets/images/book1.jpeg',
          4.7,
          892,
          'I failed the first quarter of a class in a school,so i make a fake report card.I did this every quarter year.I forget that they email home the end-years cards,and my mom got it before i could intercept...',
          220.0),
      Book(
          'History',
          'Always forgive your enemies,nothing annoyes.',
          ' istudio',
          DateTime(2020, 3, 23),
          'assets/images/book2.jpeg',
          4.7,
          892,
          'I failed the first quarter of a class in a school,so i make a fake report card.I did this every quarter year.I forget that they email home the end-years cards,and my mom got it before i could intercept...',
          240.0),
      Book(
          'History',
          'This is the way',
          ' istudio',
          DateTime(2020, 3, 23),
          'assets/images/book3.jpeg',
          4.7,
          892,
          'I failed the first quarter of a class in a school,so i make a fake report card.I did this every quarter year.I forget that they email home the end-years cards,and my mom got it before i could intercept...',
          220.0),
      Book(
          'History',
          'This is the way',
          ' istudio',
          DateTime(2020, 3, 23),
          'assets/images/book4.jpeg',
          4.7,
          892,
          'I failed the first quarter of a class in a school ,so i make a fake report card.I did this every quarter year.I forget that they email home the end-years cards,and my mom got it before i could intercept...',
          240.0),
      Book(
          'History',
          'This is the way',
          ' istudio',
          DateTime(2020, 3, 23),
          'assets/images/book5.jpeg',
          4.7,
          892,
          'I failed the first quarter of a class in a school,so i make a fake report card.I did this every quarter year.I forget that they email home the end-years cards,and my mom got it before i could intercept...',
          220.0),
    ];
  }
}
