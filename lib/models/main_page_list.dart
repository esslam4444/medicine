// class MainPageList {
//   String? icon;
//   String? name;

//   MainPageList({this.icon, this.name});

//   MainPageList.fromJson(Map<String, dynamic> json) {
//     icon = json['icon'];
//     name = json['name'];
//   }

//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['icon'] = this.icon;
//   //   data['name'] = this.name;
//   //   return data;
//   // }
// }

class MainPageList {
  String? id;
  int? number;
  String? typeVehicle;
  bool? isDeactivate;
  int? specificCount;
  int? detailsCount;

  MainPageList(
      {this.id,
      this.number,
      this.typeVehicle,
      this.isDeactivate,
      this.specificCount,
      this.detailsCount});

  MainPageList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    typeVehicle = json['typeVehicle'];
    isDeactivate = json['isDeactivate'];
    specificCount = json['specificCount'];
    detailsCount = json['detailsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
    data['typeVehicle'] = this.typeVehicle;
    data['isDeactivate'] = this.isDeactivate;
    data['specificCount'] = this.specificCount;
    data['detailsCount'] = this.detailsCount;
    return data;
  }
}
