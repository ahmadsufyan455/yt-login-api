class LoginResponseModel {
  final String accessToken;
  final String refreshToken;

  LoginResponseModel({required this.accessToken, required this.refreshToken});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        accessToken: json['accessToken'],
        refreshToken: json['refreshToken'],
      );
}
