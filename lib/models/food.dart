part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFood = [
  Food(
    id: 1,
    picturePath:
        "https://www.woke.id/wp-content/uploads/2019/09/sate-nusantara-12-famous-satay-from-indonesia-indoindians-758x500.jpg",
    name: "Sate Ayam Enak",
    description:
        "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
    ingredients: "Bawang merah, dagin ayam, timun, kecap",
    price: 25000,
    rate: 4.2,
    types: [FoodType.new_food, FoodType.recommended, FoodType.popular],
  ),
  Food(
      id: 2,
      picturePath:
          "https://www.masakapahariini.com/wp-content/uploads/2018/04/resep-rawon-daging-780x440.jpg",
      name: "Rawon",
      description: "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
      ingredients: "Bawang merah, dagin ayam, timun, kecap",
      price: 25000,
      rate: 4.8,
      types: [FoodType.recommended]),
  Food(
      id: 3,
      picturePath: "https://cdn.kibrispdr.org/data/gambar-soto-medan-hd-1.jpg",
      name: "Sate Medan",
      description:
          "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
      ingredients: "Bawang merah, dagin ayam, timun, kecap",
      price: 25000,
      rate: 4.2,
      types: [FoodType.popular]),
  Food(
      id: 4,
      picturePath:
          "https://www.bukabaca.id/wp-content/uploads/2020/12/IMG-20201202-WA0069.jpg",
      name: "Special Burger",
      description: "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
      ingredients: "Bawang merah, dagin ayam, timun, kecap",
      price: 25000,
      rate: 4.2,
      types: [FoodType.new_food]),
  Food(
      id: 5,
      picturePath: "https://wallpapercave.com/wp/wp3541015.jpg",
      name: "Special Kebab",
      description:
          "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
      ingredients: "Bawang merah, dagin ayam, timun, kecap",
      price: 25000,
      rate: 4.2,
      types: [FoodType.new_food]),
  Food(
      id: 6,
      picturePath:
          "https://www.bukabaca.id/wp-content/uploads/2020/12/IMG-20201202-WA0069.jpg",
      name: "Special Gado-Gado",
      description: "Sate ayam rizky, paling enak se-kota medan. harga terjangkau dan porsinya jumbo",
      ingredients: "Bawang merah, dagin ayam, timun, kecap",
      price: 25000,
      rate: 4.2,
      types: [FoodType.popular]),
];
