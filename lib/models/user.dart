part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String profile_photo_url;
  static String token;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.profile_photo_url});

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        address: data['address'],
        houseNumber: data['houseNumber'],
        phoneNumber: data['phoneNumber'],
        city: data['city'],
        profile_photo_url: data['profile_photo_url'],
      );

  User copyWith({
    int id,
    String name,
    String email,
    String address,
    String houseNumber,
    String phoneNumber,
    String city,
    String profile_photo_url,
  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.email,
          address: address ?? this.address,
          houseNumber: houseNumber ?? this.houseNumber,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          city: city ?? this.city,
          profile_photo_url: profile_photo_url ?? this.profile_photo_url);

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, profile_photo_url];
}

User mockUser = User(
    id: 1,
    name: 'Rizky Putra',
    address: 'Jl. Banjarbaru Kota Idaman',
    houseNumber: '28',
    phoneNumber: '081545417081',
    email: 'rizkyputra531.rp@gmail.com',
    city: 'Kota Banjarbaru',
    profile_photo_url:
        'https://www.pngall.com/wp-content/uploads/2016/04/Happy-Person-Free-Download-PNG.png');
