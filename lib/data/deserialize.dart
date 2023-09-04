// 🌎 Project imports:
import '/lib.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType,
    {bool growable = true}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'Account':
      return Account.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AccountAgreementModel':
      return AccountAgreementModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AccountAgreementRequest':
      return AccountAgreementRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AuthApiResponse':
      return AuthApiResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ApiResponseObject':
      return ApiResponseObject.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'BillingKeyRequestModel':
      return BillingKeyRequestModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CancelRequestModel':
      return CancelRequestModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CarControlHistoryModel':
      return CarControlHistoryModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CarHistoryDTO':
      return CarHistoryDTO.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CarModel':
      return CarModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CarRequest':
      return CarRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'DeviceControlResultDTO':
      return DeviceControlResultDTO.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'DeviceOption':
      return DeviceOption.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'GrantedAuthority':
      return GrantedAuthority.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'LeaderSetRequest':
      return LeaderSetRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'LicenseModel':
      return LicenseModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'LicenseRequest':
      return LicenseRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Member':
      return Member.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Notice':
      return Notice.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PayBillingRequestModel':
      return PayBillingRequestModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PaymentCardModel':
      return PaymentCardModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PaymentCardRequest':
      return PaymentCardRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PaymentModel':
      return PaymentModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Push':
      return Push.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'QnA':
      return QnA.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ScheduleModel':
      return ScheduleModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ScheduleRequest':
      return ScheduleRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'SelectUserDTO':
      return SelectUserDTO.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ServiceCarDetailRequest':
      return ServiceCarDetailRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ServiceDetail':
      return ServiceDetail.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ShareServiceModel':
      return ShareServiceModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ShareServiceRequest':
      return ShareServiceRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Sms':
      return Sms.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TeamAccountConnectionModel':
      return TeamAccountConnectionModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TeamAccountConnectionRequest':
      return TeamAccountConnectionRequest.fromJson(
          value as Map<String, dynamic>) as ReturnType;
    case 'TeamAccountConnectionResponse':
      return TeamAccountConnectionResponse.fromJson(
          value as Map<String, dynamic>) as ReturnType;
    case 'TeamAccountModel':
      return TeamAccountModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TeamCarConnection':
      return TeamCarConnection.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TeamModel':
      return TeamModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TeamRequest':
      return TeamRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TerminalModel':
      return TerminalModel.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TerminalRequest':
      return TerminalRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TerminalUpdateRequest':
      return TerminalUpdateRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TestModel':
      return TestModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UserDTO':
      return UserDTO.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UserDetailsDTO':
      return UserDetailsDTO.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UserSubInfo':
      return UserSubInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(
                v, targetType,
                growable: growable))
            .toList(growable: growable) as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(
                v, targetType,
                growable: growable))
            .toSet() as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return Map<dynamic, BaseType>.fromIterables(
          value.keys,
          value.values.map((dynamic v) => deserialize<BaseType, BaseType>(
              v, targetType,
              growable: growable)),
        ) as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
