class Product {
  String name;
  String company;
  int count = 0;
  int price = 5000;

  Product({required this.name, required this.company});

  // Product.name(this.name, this.company); //named constructer, 이름이 있는 생성자
  // Product.all(this.name, this.company, this.count, this.price);

  void sale() {
    count += 1;
  }

  @override
  String toString() {
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }
}
