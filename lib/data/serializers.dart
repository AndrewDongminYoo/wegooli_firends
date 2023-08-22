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
import 'package:wegooli_friends/data/date_serializer.dart';
import 'package:wegooli_friends/data/models/account.dart';
import 'package:wegooli_friends/data/models/account_agreement_model.dart';
import 'package:wegooli_friends/data/models/account_agreement_request.dart';
import 'package:wegooli_friends/data/models/api_response_object.dart';
import 'package:wegooli_friends/data/models/car_control_history_model.dart';
import 'package:wegooli_friends/data/models/date.dart';
import 'package:wegooli_friends/data/models/device_control_result_dto.dart';
import 'package:wegooli_friends/data/models/device_option.dart';
import 'package:wegooli_friends/data/models/granted_authority.dart';
import 'package:wegooli_friends/data/models/leader_set_request.dart';
import 'package:wegooli_friends/data/models/license_model.dart';
import 'package:wegooli_friends/data/models/license_request.dart';
import 'package:wegooli_friends/data/models/payment_card_model.dart';
import 'package:wegooli_friends/data/models/payment_card_request.dart';
import 'package:wegooli_friends/data/models/schedule_model.dart';
import 'package:wegooli_friends/data/models/schedule_request.dart';
import 'package:wegooli_friends/data/models/select_team_account_connection_request.dart';
import 'package:wegooli_friends/data/models/service_car_detail_request.dart';
import 'package:wegooli_friends/data/models/service_detail.dart';
import 'package:wegooli_friends/data/models/share_service_model.dart';
import 'package:wegooli_friends/data/models/share_service_request.dart';
import 'package:wegooli_friends/data/models/team_account_connection_model.dart';
import 'package:wegooli_friends/data/models/team_account_connection_request.dart';
import 'package:wegooli_friends/data/models/team_car_connection.dart';
import 'package:wegooli_friends/data/models/team_model.dart';
import 'package:wegooli_friends/data/models/team_request.dart';
import 'package:wegooli_friends/data/models/terminal_model.dart';
import 'package:wegooli_friends/data/models/terminal_request.dart';
import 'package:wegooli_friends/data/models/test_model.dart';
import 'package:wegooli_friends/data/models/user_details_dto.dart';
import 'package:wegooli_friends/data/models/user_dto.dart';
import 'package:wegooli_friends/data/models/user_sub_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AccountAgreementModel,
  AccountAgreementRequest,
  ApiResponseObject,
  CarControlHistoryModel,
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
  SelectTeamAccountConnectionRequest,
  ServiceCarDetailRequest,
  ServiceDetail,
  ShareServiceModel,
  ShareServiceRequest,
  TeamAccountConnectionModel,
  TeamAccountConnectionRequest,
  TeamCarConnection,
  TeamModel,
  TeamRequest,
  TerminalModel,
  TerminalRequest,
  TestModel,
  UserDTO,
  UserDetailsDTO,
  UserSubInfo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PaymentCardModel)]),
        () => ListBuilder<PaymentCardModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ShareServiceModel)]),
        () => ListBuilder<ShareServiceModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamModel)]),
        () => ListBuilder<TeamModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamAccountConnectionModel)]),
        () => ListBuilder<TeamAccountConnectionModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ScheduleModel)]),
        () => ListBuilder<ScheduleModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CarControlHistoryModel)]),
        () => ListBuilder<CarControlHistoryModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LicenseModel)]),
        () => ListBuilder<LicenseModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TestModel)]),
        () => ListBuilder<TestModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AccountAgreementModel)]),
        () => ListBuilder<AccountAgreementModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TerminalModel)]),
        () => ListBuilder<TerminalModel>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
