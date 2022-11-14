class Data {
    int id;
    String image;
    String title;

    Data({required this.id, required this.image, required this.title});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            id: json['id'],
            image: json['image'],
            title: json['title'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['image'] = this.image;
        data['title'] = this.title;
        return data;
    }
}