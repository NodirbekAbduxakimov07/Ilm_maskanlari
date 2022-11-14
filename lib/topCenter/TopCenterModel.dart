class TopCenterModel {
    String? address;
    String? comment;
    List<Object>? courses;
   // District district;
    int? district_id;
    int? id;
    List<String>? images;
    double? latitude;
    double? longitude;
    String? main_image;
    int? monthly_payment_max;
    int? monthly_payment_min;
    String? name;
    String? phone;
    int? rating;
    int? rating_count;

    // TopCenterModel({
    //      this.main_image,
    //      this.monthly_payment_max,
    //      this.monthly_payment_min,
    //      this.name,
    //      this.phone,
    //      this.rating,
    //      this.rating_count, address, comment, id});
// Region region;
//     int region_id;
//     int subsribers_count;


    TopCenterModel({
        this.address, this.comment, this.courses,
      //  this.district,
        this.district_id, this.id, this.images, this.latitude,
        this.longitude, this.main_image, this.monthly_payment_max,
        this.monthly_payment_min, this.name, this.phone, this.rating,
        this.rating_count,
    //    this.region, this.region_id, this.subsribers_count
    });

    factory TopCenterModel.fromJson(Map<String, dynamic> json) {
        return TopCenterModel(
            address: json['address'],
            comment: json['comment'],
           // courses: json['courses'] != null ? (json['courses'] as List).map((i) => Object.fromJson(i)).toList() : null,
          //  district: json['district'] != null ? District.fromJson(json['district']) : null,
          //  district_id: json['district_id'],
            id: json['id'],
            // images: json['images'] != null ? new List<String>.from(json['images']) : null,
            // latitude: json['latitude'],
            // longitude: json['longitude'],
            main_image: json['main_image'],
            monthly_payment_max: json['monthly_payment_max'],
            monthly_payment_min: json['monthly_payment_min'],
            name: json['name'],
            phone: json['phone'],
            rating: json['rating'],
            rating_count: json['rating_count'],
            // region: json['region'] != null ? Region.fromJson(json['region']) : null,
            // region_id: json['region_id'],
            // subsribers_count: json['subsribers_count'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['address'] = this.address;
        data['comment'] = this.comment;
        data['district_id'] = this.district_id;
        data['id'] = this.id;
        data['latitude'] = this.latitude;
        data['longitude'] = this.longitude;
        data['main_image'] = this.main_image;
        data['monthly_payment_max'] = this.monthly_payment_max;
        data['monthly_payment_min'] = this.monthly_payment_min;
        data['name'] = this.name;
        data['phone'] = this.phone;
        data['rating'] = this.rating;
        data['rating_count'] = this.rating_count;
        // data['region_id'] = this.region_id;
        // data['subsribers_count'] = this.subsribers_count;
        // if (this.courses != null) {
        //     data['courses'] = this.courses.map((v) => v.toJson()).toList();
        // }
        // if (this.district != null) {
        //     data['district'] = this.district.toJson();
        // }
        if (this.images != null) {
            data['images'] = this.images;
        }
        // if (this.region != null) {
        //     data['region'] = this.region.toJson();
        // }
        return data;
    }
}