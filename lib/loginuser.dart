class LoginUser {
  List<LoginDetails>? loginDetails;
  List<LoginStatus>? loginStatus;

  LoginUser({this.loginDetails, this.loginStatus});

  LoginUser.fromJson(Map<String, dynamic> json) {
    if (json['LoginDetails'] != null) {
      loginDetails = <LoginDetails>[];
      json['LoginDetails'].forEach((v) {
        loginDetails!.add(new LoginDetails.fromJson(v));
      });
    }
    if (json['LoginStatus'] != null) {
      loginStatus = <LoginStatus>[];
      json['LoginStatus'].forEach((v) {
        loginStatus!.add(new LoginStatus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.loginDetails != null) {
      data['LoginDetails'] = this.loginDetails!.map((v) => v.toJson()).toList();
    }
    if (this.loginStatus != null) {
      data['LoginStatus'] = this.loginStatus!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LoginDetails {
  int? uID;
  String? iD;

  String? firstName;
  String? lastName;
  String? telephone1;
  String? email;
  

  LoginDetails(
      {this.uID,
      this.iD,
    
      this.firstName,
      this.lastName,
      this.telephone1,
      this.email,
    });

  LoginDetails.fromJson(Map<String, dynamic> json) {
    uID = json['UID'];
    iD = json['ID'];
    
    firstName = json['FirstName'];
    lastName = json['LastName'];
    telephone1 = json['Telephone1'];
    email = json['Email'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UID'] = this.uID;
    data['ID'] = this.iD;

    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Telephone1'] = this.telephone1;
    data['Email'] = this.email;
    return data;
  }
}

class LoginStatus {
  String? status;

  LoginStatus({this.status});

  LoginStatus.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}

