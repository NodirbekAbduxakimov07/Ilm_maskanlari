import 'Science.dart';

class Data {
    String? created_at;
    String? icon;
    int? id;
    List<Science>? sciences;
    String? title;
    String? updated_at;

    Data({ this.created_at,  this.icon,  this.id,  this.sciences,  this.title,  this.updated_at});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            created_at: json['created_at'], 
            icon: json['icon'], 
            id: json['id'], 
            sciences: json['sciences'] != null ? (json['sciences'] as List).map((i) => Science.fromJson(i)).toList() : null, 
            title: json['title'], updated_at: '',
            // updated_at: json['updated_at'] != null ? String.fromJson(json['updated_at']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['created_at'] = this.created_at;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['title'] = this.title;
        if (this.sciences != null) {
            data['sciences'] = this.sciences?.map((v) => v.toJson()).toList();
        }
        // if (this.updated_at != null) {
        //     data['updated_at'] = updated_at!.toJson();
        // }
        return data;
    }
}