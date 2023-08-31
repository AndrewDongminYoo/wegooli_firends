// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

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

  String getGasImg() {
    int i = int.parse(controller.terminalModelObj.value.fuel ?? '0');
    switch (i ~/ 10) {
      case 0:
        return Assets.svg.gas.imgGasPer10.path;
      case 1:
        return Assets.svg.gas.imgGasPer20.path;
      case 2:
        return Assets.svg.gas.imgGasPer30.path;
      case 3:
        return Assets.svg.gas.imgGasPer40.path;
      case 4:
        return Assets.svg.gas.imgGasPer50.path;
      case 5:
        return Assets.svg.gas.imgGasPer60.path;
      case 6:
        return Assets.svg.gas.imgGasPer70.path;
      case 7:
        return Assets.svg.gas.imgGasPer80.path;
      case 8:
        return Assets.svg.gas.imgGasPer90.path;
      case 9:
      case 10:
        return Assets.svg.gas.imgGasPer100.path;
      default:
        return Assets.svg.gas.imgGasPer100.path;
    }
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
                svgPath: Assets.svg.imgFriendsTypo.path),
            styleType: Style.bgOutline),
        body: SizedBox(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height - getVerticalSize(45),
          child: SingleChildScrollView(
            padding: getPadding(top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Padding(
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
                                      letterSpacing: getHorizontalSize(0.03))),
                              Padding(
                                padding: getPadding(top: 4),
                                child: Text(
                                  controller.terminalModelObj.value.carNum ??
                                      "차량 번호",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOnPrimary
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.02)),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 1),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: getGasImg(),
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
                                    ArrowRight(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.carStatusInfo);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l10ns.status,
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
                              : l10ns.available,
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
                    width: mediaQueryData.size.width,
                    margin: getMargin(top: 31),
                    decoration: BoxDecoration(color: appTheme.gray100)),
                Container(
                  width: mediaQueryData.size.width,
                  child: Stack(
                    children: [
                      Container(
                        // height: mediaQueryData.size.height,
                        width: mediaQueryData.size.width,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 21),
                                    child: Text(l10ns.smartKey,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleMediumBlack900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04))))),
                            Column(
                              children: [
                                Padding(
                                  padding: getPadding(
                                      // left: 40,
                                      top: 22),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(right: 20),
                                        child: ControlButton(
                                          text: l10ns.openDoor,
                                          svgPath: Assets.svg.imgUnlocked.path,
                                          // onTap: () => openDoor(),
                                        ),
                                      ),
                                      ControlButton(
                                        text: l10ns.lockTheDoor,
                                        svgPath: Assets.svg.imgLocked.path,
                                        // onTap: () => closeDoor(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                      // left: 40,
                                      top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(right: 20),
                                        child: ControlButton(
                                          text: l10ns.turnOnHazardLights,
                                          svgPath: Assets.svg.imgTriangle.path,
                                          // onTap: () => emergencyLight(),
                                        ),
                                      ),
                                      ControlButton(
                                        text: l10ns.honkTheHorn,
                                        svgPath: Assets.svg.imgCampaign.path,
                                        // onTap: () => horn(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CustomIconButton(
                                height: getVerticalSize(70),
                                width: getHorizontalSize(70),
                                margin: getMargin(right: 22, top: 30),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 225, 66, 1),
                                    shape: BoxShape.circle),
                                onTap: () =>
                                    launchUrl(Uri.parse('tel:15666560')),
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
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 사용중일 때 화면 가리기용
                      if (controller.isUsed.isTrue)
                        Container(
                            height: mediaQueryData.size.height -
                                getVerticalSize(200),
                            width: mediaQueryData.size.width,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(164, 168, 175, 0.2)),
                            child: Center(
                                child: Container(
                                    alignment: Alignment.center,
                                    width: getHorizontalSize(180),
                                    height: getVerticalSize(44),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(34, 34, 34, 0.4),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Text(
                                        controller.isUsed.isTrue
                                            ? '${controller.clientName.text}님이 사용중입니다.'
                                            : l10ns.available,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16))))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ControlButton extends StatelessWidget {
  final String svgPath;
  final String text;
  final Function? onTap;
  const ControlButton({
    required this.svgPath,
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 225, 66, 1), shape: BoxShape.circle)),
      ElevatedButton(
          onPressed: () {
            if (onTap != null) {
              onTap!();
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(EdgeInsets.all(0)),
            side: MaterialStateProperty.all(BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              width: getHorizontalSize(1.0),
            )),
            fixedSize: MaterialStateProperty.all(Size(130, 130)),
            shape: MaterialStateProperty.all(CircleBorder(
              side: BorderSide(
                // color: Color.fromRGBO(0, 0, 0, 0.1),
                color: Color.fromRGBO(164, 168, 175, 0.2),
                width: 1,
              ),
            )),
            shadowColor:
                MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0.1)),
            // [
            //   BoxShadow(
            //     color: Color.fromRGBO(0, 0, 0, 0.1),
            //     blurRadius: 10,
            //     offset: Offset(2, 2),
            //   ),
            // ],
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              // If the button is pressed, return green, otherwise blue
              if (states.contains(MaterialState.pressed)) {
                return Colors.transparent;
              }
              return Colors.white;
            }),
            textStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return TextStyle(fontSize: 16);
              }
              return TextStyle(fontSize: 16);
            }),
          ),
          child: Container(
              width: 120,
              height: 120,
              padding: getPadding(),
              margin: getMargin(),
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border:
                    Border.all(color: Color.fromRGBO(0, 0, 0, 0.1), width: 1),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: svgPath,
                      height: getSize(46),
                      width: getSize(46),
                      color: Colors.transparent,
                    ),
                    Padding(
                      padding: getPadding(top: 3),
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium!
                            .copyWith(letterSpacing: getHorizontalSize(0.03)),
                      ),
                    ),
                  ])))
    ]);
  }
}

class ArrowLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        svgPath: Assets.svg.imgArrowLeft.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4));
  }
}

class ArrowRight extends StatelessWidget {
  final Function()? onTap;
  ArrowRight({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowRight.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4));
  }
}
