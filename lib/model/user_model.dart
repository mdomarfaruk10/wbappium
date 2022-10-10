class UsersModel{
  String? id;
  String? firstName;
  String? lastName;
  String? userName;
  String? upassword;
  String? uemail;
  String? ugender;
  String? uage;
  String? ucountrycode;
  String? ucountry;
  String? ustate;
  String? ucity;
  String? uadress;
  String? utimestemp;

  UsersModel(
      {this.id,
        this.firstName,
        this.lastName,
        this.userName,
        this.upassword,
        this.uemail,
        this.ugender,
        this.uage,
        this.ucountrycode,
        this.ucountry,
        this.ustate,
        this.ucity,
        this.uadress,
        this.utimestemp});
}