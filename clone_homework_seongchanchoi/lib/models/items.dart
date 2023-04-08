class Items {
  String name;
  String location;
  String price;
  String itemImage;
  bool isSold;
  bool isReserved;

  Items(
    this.name,
    this.location,
    this.price,
    this.itemImage,
    this.isSold,
    this.isReserved,
  );
}

final List<Items> items = <Items>[
  Items(
    '맥북',
    '한동대',
    '750,000',
    'assets/laptop.png',
    false,
    true,
  ),
  Items(
    'S22 자급제 화이트 미개봉',
    '한동대',
    '750,000',
    'assets/phone.png',
    true,
    false,
  ),
  Items(
    'S22 자급제 화이트 미개봉',
    '한동대',
    '750,000',
    'assets/phone.png',
    false,
    false,
  ),
  Items(
    'S22 자급제 화이트 미개봉',
    '한동대',
    '750,000',
    'assets/phone.png',
    false,
    false,
  ),
  Items(
    'S22 자급제 화이트 미개봉',
    '한동대',
    '750,000',
    'assets/phone.png',
    false,
    false,
  ),
];
