class Science {
    int? category_id;
    String? created_at;
    String? icon;
    int? id;
    String? title;

    Science({ this.category_id,  this.created_at,  this.icon,  this.id,  this.title});

    factory Science.fromJson(Map<String, dynamic> json) {
        return Science(
            category_id: json['category_id'], 
            created_at: json['created_at'], 
            icon: json['icon'], 
            id: json['id'], 
            title: json['title'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['category_id'] = this.category_id;
        data['created_at'] = this.created_at;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['title'] = this.title;
        return data;
    }
}