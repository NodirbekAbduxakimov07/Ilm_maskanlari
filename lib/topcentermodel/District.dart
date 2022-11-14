class District {
    String? district_name;
    int? id;
    int? region_id;

    District({this.district_name, this.id, this.region_id});

    factory District.fromJson(Map<String, dynamic> json) {
        return District(
            district_name: json['district_name'], 
            id: json['id'], 
            region_id: json['region_id'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['district_name'] = this.district_name;
        data['id'] = this.id;
        data['region_id'] = this.region_id;
        return data;
    }
}