
class CategoryModelll<T> {
  List<T>? data;
  int? error_code;
  String? message;
  bool? success;

  // void push(T item) => data.add(item);
  // T pop() => data.removeLast();

  CategoryModelll(
      {this.data, this.error_code, this.message, this.success});

  factory CategoryModelll.fromJson(Map<String, dynamic> json, Function(List<dynamic>) build) {
    return CategoryModelll<T>(
      data: build(json['data']),
      // data: json['data'] != null
      //     ? (json['data'] as List).map((i) => Data.fromJson(i)).toList()
      //     : null,
      error_code: json['error_code'],
      message: json['message'],
      success: json['success'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['error_code'] = this.error_code;
  //   data['message'] = this.message;
  //   data['success'] = this.success;
  //   if (this.data != null) {
  //     data['data'] = this.data!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
  //
  // static listFromJson(dynamic json) {
  //   return (json as List).map((e) => CategoryModel.fromJson(e)).toList();
  // }
}
