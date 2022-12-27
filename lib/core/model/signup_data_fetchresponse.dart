class Bottamfetch {
  String? id;
  String? name;
  String? emailId;
  String? password;
  String? phone;

  Bottamfetch({this.id, this.name, this.emailId, this.password, this.phone});

  Bottamfetch.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    emailId = json['EmailId'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['EmailId'] = this.emailId;
    data['password'] = this.password;
    data['phone'] = this.phone;
    return data;
  }
}




// class SignupfetchResponse {
//   String? id;
//   String? name;
//   String? contactName;
//   String? emailId;
//   String? password;
//
//   SignupfetchResponse(
//       {this.id, this.name, this.contactName, this.emailId, this.password});
//
//   SignupfetchResponse.fromJson(Map<String, dynamic> json) {
//     id = json['Id'];
//     name = json['Name'];
//     contactName = json['ContactName'];
//     emailId = json['EmailId'];
//     password = json['password'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Id'] = this.id;
//     data['Name'] = this.name;
//     data['ContactName'] = this.contactName;
//     data['EmailId'] = this.emailId;
//     data['password'] = this.password;
//     return data;
//   }
// }