class MenuModel {
  String nama;
  int harga;
  String imgUrl;

  MenuModel({
    required this.nama,
    required this.harga,
    required this.imgUrl,
  });
}

List<MenuModel> menuList = [
  MenuModel(
    nama: "Burger",
    harga: 25000,
    imgUrl: "images/burger.jpg",
  ),
  MenuModel(
    nama: "Pizza",
    harga: 50000,
    imgUrl: "images/pizza.jpg",
  ),
  MenuModel(
    nama: "Fried Chicken",
    harga: 20000,
    imgUrl: "images/chicken.jpg",
  ),
  MenuModel(
    nama: "French Fries",
    harga: 15000,
    imgUrl: "images/kentang.jpg",
  ),
  MenuModel(
    nama: "Hot Dog",
    harga: 18000,
    imgUrl: "images/hotdog.jpg",
  ),
  MenuModel(
    nama: "Spaghetti",
    harga: 30000,
    imgUrl: "images/spageti.jpg",
  ),
  MenuModel(
    nama: "Sandwich",
    harga: 22000,
    imgUrl: "images/sanwitch.jpg",
  ),
  MenuModel(
    nama: "Donut",
    harga: 12000,
    imgUrl: "images/donut.jpg",
  ),
];