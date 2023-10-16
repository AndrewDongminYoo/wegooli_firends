/// This class is used in the [datecolumn1_item_widget] screen.
class Datecolumn1ItemModel {
  Datecolumn1ItemModel({
    this.day,
    this.date1,
    this.date2,
    this.date3,
    this.date4,
    this.date5,
    this.id,
  }) {
    day = day ?? '30';
    date1 = date1 ?? '30';
    date2 = date2 ?? '6';
    date3 = date3 ?? '13';
    date4 = date4 ?? '20';
    date5 = date5 ?? '27';
    id = id ?? '';
  }

  String? day;

  String? date1;

  String? date2;

  String? date3;

  String? date4;

  String? date5;

  String? id;
}
