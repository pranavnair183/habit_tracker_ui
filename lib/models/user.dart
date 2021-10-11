class UserModel {
  int? id;
  String? name;
  String? email;
  int? age;
  bool? isSocialLogin;
  String? imgUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.age,
    this.isSocialLogin = false,
    this.imgUrl =
        'https://cdn.shopify.com/shopifycloud/shopify/assets/no-image-2048-5e88c1b20e087fb7bbe9a3771824e743c244f437e4f8ba93bbf7b11b53f7824c_1200x1200.gif',
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    age = json['age'];
    isSocialLogin = json['isSocialLogin'];
    imgUrl = json['imgUrl'];
  }
}
