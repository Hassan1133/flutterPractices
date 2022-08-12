class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class catalogModel {
  static final items = [
    Item(
        id: 1,
        name: "I Phone 6",
        desc: "Apple Iphone 6 Generation",
        price: 999,
        color: "#33505a",
        image:
            "https://images.pexels.com/photos/198192/pexels-photo-198192.jpeg"),
  ];
}
