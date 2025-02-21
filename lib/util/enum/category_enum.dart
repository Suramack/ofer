enum CategoryEnum {
  mensClothing(id: 1, value: "men's clothing", display: "Men's clothing"),
  womensClothing(id: 2, value: "women's clothing", display: "Women's clothing"),
  jewelery(id: 3, value: "jewelery", display: "Jewelery"),
  electronics(id: 4, value: "electronics", display: "Electronics"),
  cart(id: 5, value: "cart", display: "Cart");

  final int id;
  final String value;
  final String display;

  const CategoryEnum({
    required this.id,
    required this.value,
    required this.display,
  });
}
