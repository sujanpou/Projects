class User {
  late String userId;
  late String username;
  late String email;

  User({
    required this.userId,
    required this.username,
    required this.email,
  });

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}
