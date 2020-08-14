class Hotel {
  String imgUrl;
  String name;
  String address;
  double price;

  Hotel({
    this.imgUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imgUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: "123, DarkVilla",
    price: 234.33,
  ),
  Hotel(
    imgUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: "123, Choks bar",
    price: 34.33,
  ),
  Hotel(
    imgUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: "45, Streeet yui",
    price: 99.93,
  ),
];
