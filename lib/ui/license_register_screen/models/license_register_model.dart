// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';

class LicenseRegisterModel {
  Rx<List<DropdownData>> licenseTypes = Rx([
    DropdownData(id: 1, title: '1종보통'),
    DropdownData(id: 2, title: '2종보통'),
    DropdownData(id: 3, title: '1종대형'),
    DropdownData(id: 4, title: '2종오토'),
  ]);

  Rx<List<DropdownData>> issuedYears = Rx([
    DropdownData(id: 11, title: '11', value: DateTime(2011)),
    DropdownData(id: 12, title: '12', value: DateTime(2012)),
    DropdownData(id: 13, title: '13', value: DateTime(2013)),
    DropdownData(id: 14, title: '14', value: DateTime(2014)),
    DropdownData(id: 15, title: '15', value: DateTime(2015)),
    DropdownData(id: 16, title: '16', value: DateTime(2016)),
    DropdownData(id: 17, title: '17', value: DateTime(2017)),
    DropdownData(id: 18, title: '18', value: DateTime(2018)),
    DropdownData(id: 19, title: '19', value: DateTime(2019)),
    DropdownData(id: 20, title: '20', value: DateTime(2020)),
    DropdownData(id: 21, title: '21', value: DateTime(2021)),
    DropdownData(id: 22, title: '22', value: DateTime(2022)),
    DropdownData(id: 23, title: '23', value: DateTime(2023)),
    DropdownData(id: 24, title: '24', value: DateTime(2024)),
  ]);
}
