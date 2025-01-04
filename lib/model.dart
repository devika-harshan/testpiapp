class Users {
  final int id;
  final String name;
  final String email;
  final String password;

  const Users(
      {required this.id,
      required this.name,
      required this.email,
      required this.password});

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
      };
}
