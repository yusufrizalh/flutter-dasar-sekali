class ImageData {
  int id;
  String title;
  String author;
  String imageLarge;
  ImageData({this.id, this.title, this.author, this.imageLarge});
  static List<ImageData> pixabay;

  ImageData.init() {
    pixabay = List();
    pixabay.add(
      ImageData(id: 1, title: 'Hummingbird', author: 'Veronika_Andrews', imageLarge: 'https://cdn.pixabay.com/photo/2021/04/02/23/33/annas-hummingbird-6146187_960_720.jpg'),
    );
    pixabay.add(
      ImageData(id: 2, title: 'Peach Flower', author: 'Lancier', imageLarge: 'https://cdn.pixabay.com/photo/2021/03/29/08/22/peach-flower-6133330_960_720.jpg'),
    );
    pixabay.add(
      ImageData(id: 3, title: 'Mountains', author: 'Pehrlich', imageLarge: 'https://cdn.pixabay.com/photo/2021/02/23/11/06/mountains-6043079_960_720.jpg'),
    );
    pixabay.add(
      ImageData(id: 4, title: 'Hare Field', author: 'SvenZiegler', imageLarge: 'https://cdn.pixabay.com/photo/2021/03/02/20/21/hare-6063733_960_720.jpg'),
    );
    pixabay.add(
      ImageData(id: 5, title: 'Chichen Itza Mexico', author: 'Walkerssk', imageLarge: 'https://cdn.pixabay.com/photo/2015/11/05/23/02/chichen-itza-1025099_960_720.jpg'),
    );
  }
}
