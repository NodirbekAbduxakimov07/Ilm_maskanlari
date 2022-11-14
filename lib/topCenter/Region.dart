class Region {
    int? id;
    String? region_name;

    Region({this.id, this.region_name});

    factory Region.fromJson(Map<String, dynamic> json) {
        return Region(
            id: json['id'], 
            region_name: json['region_name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['region_name'] = this.region_name;
        return data;
    }
}