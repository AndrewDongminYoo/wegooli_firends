// ignore_for_file: unused_import

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';

// 🌎 Project imports:
import '/data/date_serializer.dart';
import 'models/account.dart';
import 'models/account_agreement_model.dart';
import 'models/account_agreement_request.dart';
import 'models/api_response_object.dart';
import 'models/car_control_history_model.dart';
import 'models/car_history_dto.dart';
import 'models/date.dart';
import 'models/device_control_result_dto.dart';
import 'models/device_option.dart';
import 'models/granted_authority.dart';
import 'models/leader_set_request.dart';
import 'models/license_model.dart';
import 'models/license_request.dart';
import 'models/payment_card_model.dart';
import 'models/payment_card_request.dart';
import 'models/schedule_model.dart';
import 'models/schedule_request.dart';
import 'models/service_car_detail_request.dart';
import 'models/service_detail.dart';
import 'models/share_service_model.dart';
import 'models/share_service_request.dart';
import 'models/team_account_connection_model.dart';
import 'models/team_account_connection_request.dart';
import 'models/team_account_connection_response.dart';
import 'models/team_account_model.dart';
import 'models/team_car_connection.dart';
import 'models/team_model.dart';
import 'models/team_request.dart';
import 'models/terminal_model.dart';
import 'models/terminal_request.dart';
import 'models/terminal_update_request.dart';
import 'models/test_model.dart';
import 'models/user_details_dto.dart';
import 'models/user_dto.dart';
import 'models/user_sub_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AccountAgreementModel,
  AccountAgreementRequest,
  ApiResponseObject,
  CarControlHistoryModel,
  CarHistoryDTO,
  DeviceControlResultDTO,
  DeviceOption,
  GrantedAuthority,
  LeaderSetRequest,
  LicenseModel,
  LicenseRequest,
  PaymentCardModel,
  PaymentCardRequest,
  ScheduleModel,
  ScheduleRequest,
  ServiceCarDetailRequest,
  ServiceDetail,
  ShareServiceModel,
  ShareServiceRequest,
  TeamAccountConnectionModel,
  TeamAccountConnectionRequest,
  TeamAccountConnectionResponse,
  TeamAccountModel,
  TeamCarConnection,
  TeamModel,
  TeamRequest,
  TerminalModel,
  TerminalRequest,
  TerminalUpdateRequest,
  TestModel,
  UserDTO,
  UserDetailsDTO,
  UserSubInfo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PaymentCardModel)]),
        () => ListBuilder<PaymentCardModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ShareServiceModel)]),
        () => ListBuilder<ShareServiceModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamModel)]),
        () => ListBuilder<TeamModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CarHistoryDTO)]),
        () => ListBuilder<CarHistoryDTO>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ScheduleModel)]),
        () => ListBuilder<ScheduleModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamAccountConnectionResponse)]),
        () => ListBuilder<TeamAccountConnectionResponse>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CarControlHistoryModel)]),
        () => ListBuilder<CarControlHistoryModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LicenseModel)]),
        () => ListBuilder<LicenseModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AccountAgreementModel)]),
        () => ListBuilder<AccountAgreementModel>())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TerminalModel)]),
        () => ListBuilder<TerminalModel>())
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
