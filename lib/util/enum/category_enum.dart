enum CategoryEnum {
  mensClothing(id: 1, value: "men's clothing"),
  womensClothing(id: 2, value: "women's clothing"),
  jewelery(id: 3, value: "jewelery"),
  electronics(id: 1, value: "electronics");

  final int id;
  final String value;

  const CategoryEnum({required this.id, required this.value});
}
