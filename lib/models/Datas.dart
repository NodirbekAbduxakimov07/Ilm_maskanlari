class Datas{
  int id;
  String title;
  String image;

  Datas({required this.id, required this.title, required this.image});

  factory Datas.fromJson(Map<String, dynamic> json) {
    return Datas(
        id: json['id'],
        title: json['title'],
        image: json['image']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> datas = new Map<String, dynamic>();
    datas['id'] = this.id;
    datas['title'] = this.title;
    datas['image'] = this.image;
    return datas;
  }
}