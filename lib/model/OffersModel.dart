
class OffersModel<T> {
    T data;
    int error_code;
    String message;
    bool success;


    OffersModel({required this.data, required this.error_code, required this.message, required this.success});

    // factory OffersModel.fromJson(Map<String, dynamic> json) {
    //     return OffersModel(
    //         data: json['`data`'],
    //             // != null ? (json['`data`'] as List).map((i) => Data.fromJson(i)).toList() : null,
    //         error_code: json['error_code'],
    //         message: json['message'],
    //         success: json['success'],
    //     );
    // }
    //
    // Map<String, dynamic> toJson() {
    //     final Map<String, dynamic> data = new Map<String, dynamic>();
    //     data['error_code'] = this.error_code;
    //     data['message'] = this.message;
    //     data['success'] = this.success;
    //     data['data'] = this.data;
    //     // if (this.data != null) {
    //     //     data['`data`'] = this.data?.map((v) => v.toJson()).toList();
    //     // }
    //     return data;
    // }
    //
    //
    // static listFromJson(dynamic json){
    //     return (json as List).map((e) => OffersModel.fromJson(e)).toList();
    // }
}