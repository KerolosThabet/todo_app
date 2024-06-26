class User {
  String? id ;
  String? fullName ;
  String? email ;
  User({required this.id ,required this.email , required this.fullName,});

  User.fromFirestore(Map<String ,dynamic>data){
    id = data["id"];
    fullName = data['fullName'];
    email = data['email'];
  }

  Map<String,dynamic> toFirestore(){
    return {
      'id': id ,
      'fullName' :fullName ,
      'email' :email,
    };
  }
}