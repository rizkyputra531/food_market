part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Rizky Putra',
    address: 'Jl. Banjarbaru Kota Idaman',
    houseNumber: '28',
    phoneNumber: '081545417081',
    email: 'rizkyputra531.rp@gmail.com',
    city: 'Kota Banjarbaru',
    picturePath:
        'https://www.pngall.com/wp-content/uploads/2016/04/Happy-Person-Free-Download-PNG.png');
