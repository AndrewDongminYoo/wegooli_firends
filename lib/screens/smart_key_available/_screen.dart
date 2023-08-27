// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/data/data.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class SmartKeyAvailablePage extends StatelessWidget {
  SmartKeyAvailablePage({Key? key}) : super(key: key);
  SmartKeyAvailableController controller = SmartKeyAvailableController.to;

  final String token = Get.find<PrefUtils>().getData('token');
  late Map<String, dynamic> extra = <String, dynamic>{
    'secure': <Map<String, String>>[
      {
        'type': 'http',
        'scheme': 'bearer',
        'name': token,
      },
    ],
  };
  bool isBetween(String? from, String? to) {
    if (from == null || to == null) return false;
    DateTime s = DateTime.parse(from);
    DateTime e = DateTime.parse(to);
    DateTime n = DateTime.now();
    return s.isBefore(n) && e.isAfter(n);
  }

  void getClient(String? accountId) {
    final members = [
      (TeamAccountModelBuilder()
            ..accountId = 'test'
            ..color = '#B432BE'
            ..nickname = '테스트'
            ..profilePicture = '/test')
          .build(),
      (TeamAccountModelBuilder()
            ..accountId = 'test2'
            ..color = '#9DA775'
            ..nickname = '아무거나이거이거저거저거')
          .build(),
      (TeamAccountModelBuilder()
            ..accountId = 'test3'
            ..color = '#62AF93'
            ..nickname = '아무거나저거저거이거이거')
          .build()
    ];
    // final client = Get.find<LoginWithIdAndPasswordController>()
    //     .members
    //     .firstWhere((it) => it.accountId == accountId);
    final client = members.firstWhereOrNull((it) => it.accountId == accountId);
    print('client : ${client}');
    controller.clientName.text = client?.nickname ?? '';
  }

  bool compose(ScheduleModel schedule) {
    getClient(schedule.accountId);
    return isBetween(schedule.startAt, schedule.endAt);
  }

  Future retrieveCarInfo() async {
    final terminalControllerApi =
        Get.find<WegooliFriends>().getTerminalControllerApi();
    final response =
        await terminalControllerApi.selectTerminal(seq: 2, extra: extra);
    print('response.data : ${response.data}');
    controller.terminalModelObj.value = response.data ?? TerminalModel();

    final scheduleControllerApi =
        Get.find<WegooliFriends>().getScheduleControllerApi();

    final response2 = await scheduleControllerApi.selectScheduleList(
        teamSeq: (ScheduleRequestBuilder()..teamSeq = 2).build().teamSeq,
        extra: extra);
    print('response2.data : ${response2.data}');
    bool done = response2.data!.any(compose);
    controller.isUsed.value = done;
    print('done : $done');
  }

  Future openDoor() async {
    final deviceControllerApi =
        Get.find<WegooliFriends>().getDeviceControllerApi();
    final response = await deviceControllerApi.doorOpen(
        carNum: controller.terminalModelObj.value.carNum as String,
        extra: extra);
    print('response : ${response}');
  }

  Future closeDoor() async {
    final deviceControllerApi =
        Get.find<WegooliFriends>().getDeviceControllerApi();
    final response = await deviceControllerApi.doorClose(
        carNum: controller.terminalModelObj.value.carNum as String,
        extra: extra);
    print('response : ${response}');
  }

  Future horn() async {
    final deviceControllerApi =
        Get.find<WegooliFriends>().getDeviceControllerApi();
    final response = await deviceControllerApi.turnOnHorn(
        carNum: controller.terminalModelObj.value.carNum as String,
        extra: extra);
    print('response : ${response}');
  }

  Future emergencyLight() async {
    final deviceControllerApi =
        Get.find<WegooliFriends>().getDeviceControllerApi();
    final response = await deviceControllerApi.turnOnEmergencyLight(
        carNum: controller.terminalModelObj.value.carNum as String,
        extra: extra);
    print('response : ${response}');
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    retrieveCarInfo();
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          centerTitle: true,
          title: CustomImageView(
            height: getVerticalSize(17),
            width: getHorizontalSize(88),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.imgCarMorUrban.path,
                        height: getVerticalSize(92),
                        width: getHorizontalSize(139),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 18,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              controller.terminalModelObj.value.model ??
                                  "model",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium!.copyWith(
                                  letterSpacing: getHorizontalSize(0.03)),
                            ),
                            Padding(
                              padding: getPadding(top: 4),
                              child: Text(
                                controller.terminalModelObj.value.carNum ??
                                    "차량 번호",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallOnPrimary
                                    .copyWith(
                                        letterSpacing: getHorizontalSize(0.02)),
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 1),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: Assets.svg.imgGasStation.path,
                                    height: getSize(24),
                                    width: getSize(24),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 7,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      '연료 ${controller.terminalModelObj.value.fuel ?? 0}%',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.02)),
                                    ),
                                  ),
                                  ArrowLeft(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Localized.message.status,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimary
                            .copyWith(letterSpacing: getHorizontalSize(0.02)),
                      ),
                      Padding(
                        padding: getPadding(left: 5),
                        child: Text(
                          "|",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary
                              .copyWith(letterSpacing: getHorizontalSize(0.02)),
                        ),
                      ),
                      Container(
                        height: getSize(4),
                        width: getSize(4),
                        margin: getMargin(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.green500,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2)),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 2),
                        child: Text(
                          controller.isUsed.isTrue
                              ? '${controller.clientName.text}님이 사용중입니다.'
                              : Localized.message.available,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodySmall!
                              .copyWith(letterSpacing: getHorizontalSize(0.02)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(8),
                  width: double.maxFinite,
                  margin: getMargin(top: 31),
                  decoration: BoxDecoration(color: appTheme.gray100),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                    ),
                    child: Text(
                      Localized.message.smartKey,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlack900
                          .copyWith(letterSpacing: getHorizontalSize(0.04)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: getPadding(
                        // left: 40,
                        top: 22,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              openDoor();
                            },
                            child: SizedBox(
                              height: getSize(130),
                              width: getSize(130),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(all: 5),
                                      decoration: AppDecoration.shadow.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder65,
                                      ),
                                      child: Container(
                                        height: getSize(120),
                                        width: getSize(120),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(60)),
                                          border: Border.all(
                                            color: appTheme.blueGray30033,
                                            width: getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 42,
                                        right: 42,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                Assets.svg.imgUnlocked.path,
                                            height: getSize(46),
                                            width: getSize(46),
                                          ),
                                          Padding(
                                            padding: getPadding(top: 5),
                                            child: Text(
                                              Localized.message.openDoor,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              closeDoor();
                            },
                            child: Container(
                              height: getSize(130),
                              width: getSize(130),
                              margin: getMargin(left: 20),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(all: 5),
                                      decoration: AppDecoration.shadow.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder65,
                                      ),
                                      child: Container(
                                        height: getSize(120),
                                        width: getSize(120),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(60)),
                                          border: Border.all(
                                            color: appTheme.blueGray30033,
                                            width: getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 42,
                                        right: 42,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: Assets.svg.imgLocked.path,
                                            height: getSize(46),
                                            width: getSize(46),
                                          ),
                                          Padding(
                                            padding: getPadding(top: 5),
                                            child: Text(
                                              Localized.message.lockTheDoor,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        // left: 40,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              emergencyLight();
                            },
                            child: Container(
                              padding: getPadding(all: 5),
                              decoration: AppDecoration.shadow.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder65),
                              child: Container(
                                padding: getPadding(
                                  left: 37,
                                  top: 24,
                                  right: 37,
                                  bottom: 24,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder60,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: Assets.svg.imgTriangle.path,
                                      height: getSize(46),
                                      width: getSize(46),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 5),
                                      child: Text(
                                        Localized.message.turnOnHazardLights,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              horn();
                            },
                            child: Container(
                              margin: getMargin(left: 20),
                              padding: getPadding(all: 5),
                              decoration: AppDecoration.shadow.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder65),
                              child: Container(
                                padding: getPadding(
                                  left: 37,
                                  top: 24,
                                  right: 37,
                                  bottom: 24,
                                ),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder60,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: Assets.svg.imgCampaign.path,
                                      height: getSize(46),
                                      width: getSize(46),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 5),
                                      child: Text(
                                        Localized.message.honkTheHorn,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomIconButton(
                    height: 70,
                    width: 70,
                    margin: getMargin(right: 22, top: 30),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 225, 66, 1),
                        shape: BoxShape.circle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: Assets.svg.imgEdit.path,
                          color: Colors.black,
                          width: 22.5,
                          height: 22.5,
                          margin: getMargin(bottom: 3),
                        ),
                        Text('사고 접수',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        // bottomNavigationBar: Container(
        //     margin: getMargin(left: 16, right: 16, bottom: 30),
        //     child: CustomElevatedButton(
        //       text: LocaleMessage.message.lbl76,
        //       leftIcon: Container(
        //         margin: getMargin(
        //           right: 1,
        //         ),
        //         child: CustomImageView(
        //           svgPath: Assets.svg.imgEdit.path,
        //         ),
        //       ),
        //       buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
        //           fixedSize: MaterialStateProperty.all<Size>(
        //               Size(double.maxFinite, getVerticalSize(52)))),
        //       buttonTextStyle: CustomTextStyles.titleMedium18,
        //       onTap: () {},
        //     ))
      ),
    );
  }
}

class ArrowLeft extends StatelessWidget {
  const ArrowLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      svgPath: Assets.svg.imgArrowLeft.path,
      height: getSize(18),
      width: getSize(18),
      margin: getMargin(
        left: 54,
        top: 2,
        bottom: 4,
      ),
    );
  }
}
