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
import '/lib.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AccountAgreementModel,
  AccountAgreementRequest,
  ApiResponseObject,
  BillingKeyRequestModel,
  CancelRequestModel,
  CarControlHistoryModel,
  CarHistoryDTO,
  CarModel,
  CarRequest,
  DeviceControlResultDTO,
  DeviceOption,
  GrantedAuthority,
  LeaderSetRequest,
  LicenseModel,
  LicenseRequest,
  Member,
  Notice,
  PayBillingRequestModel,
  PaymentCardModel,
  PaymentCardRequest,
  PaymentModel,
  Push,
  QnA,
  ScheduleModel,
  ScheduleRequest,
  SelectUserDTO,
  ServiceCarDetailRequest,
  ServiceDetail,
  ShareServiceModel,
  ShareServiceRequest,
  Sms,
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
        () => ListBuilder<PaymentCardModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ShareServiceModel)]),
        () => ListBuilder<ShareServiceModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QnA)]),
        () => ListBuilder<QnA>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SelectUserDTO)]),
        () => ListBuilder<SelectUserDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamAccountConnectionResponse)]),
        () => ListBuilder<TeamAccountConnectionResponse>(),
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
        const FullType(BuiltList, [FullType(AccountAgreementModel)]),
        () => ListBuilder<AccountAgreementModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Sms)]),
        () => ListBuilder<Sms>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CarModel)]),
        () => ListBuilder<CarModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Push)]),
        () => ListBuilder<Push>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TeamModel)]),
        () => ListBuilder<TeamModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CarHistoryDTO)]),
        () => ListBuilder<CarHistoryDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PaymentModel)]),
        () => ListBuilder<PaymentModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ScheduleModel)]),
        () => ListBuilder<ScheduleModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Notice)]),
        () => ListBuilder<Notice>(),
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
