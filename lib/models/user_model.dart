class UserModel {
  final String? id;
  final String? userName;
  final String? email;
  final String? phoneNo;
  final String? password;

    const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.userName,
    required this.phoneNo,
  });


  toJson(){
    return{
      "FullName": userName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}