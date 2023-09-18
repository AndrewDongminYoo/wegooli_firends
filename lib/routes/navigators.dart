// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

dynamic goBack() => Get.back();
dynamic popWithValue<T>(BuildContext context, T value) =>
    Navigator.pop<T>(context, value);

/// `Navigation.pushNamed()`의 단축 명령입니다.
/// 글로벌 라우터에 등록되어 있는 새로운 페이지를 스택에 푸시합니다.
/// [BuildContext] 없이 비즈니스 로직에서 호출할 수 있다는 장점이 있습니다.
/// [arguments]에 모든 유형의 값을 다른 경로로 이동하면서 함께 보낼 수 있습니다.
/// [id]는 문서에 설명된 대로 중첩 탐색을 사용할 때 사용합니다.
/// 기본적으로 GetX Navigation은 히스토리에 남아있는 경로를 스택에 푸시하지 못하게 합니다. 이를 무시하고 푸시하려면 [preventDuplicates]를 `false`로 옵션으로 입력합니다.
/// 참고: 예기치 않은 오류를 방지하려면 항상 경로에 슬래시(ex: `/splash_screen`)를 넣어야 합니다.
//
// [Page] 이용 약관 동의
Future<dynamic>? goAcceptTerms() => Get.toNamed(AppRoutes.acceptTerms);
// [Page] 스마트키 (사용가능)
Future<dynamic>? goCarSmartKey() => Get.toNamed(AppRoutes.carSmartKey);
// [Page] 차량 상세정보
Future<dynamic>? goCarStatusInfo() => Get.toNamed(AppRoutes.carStatusInfo);
// [Page] 팀 채팅하기
Future<dynamic>? goChatWithTeam() => Get.toNamed(AppRoutes.chatWithTeam);
// [Page] ID/PASSWORD 로그인
Future<dynamic>? goIdPwLogin() => Get.toNamed(AppRoutes.idPwLogin);
// [Page] 마이페이지
Future<dynamic>? goMyProfile() => Get.toNamed(AppRoutes.myProfile);
// [Page] 서비스 정보 없음
Future<dynamic>? goNoSubscription() => Get.toNamed(AppRoutes.noSubscription);
// [Page] 휴대 전화 인증
Future<dynamic>? goPhoneAuth() => Get.toNamed(AppRoutes.phoneAuth);
// [Page] 마이페이지 / 내 정보보기
Future<dynamic>? goProfileInfoPage() => Get.toNamed(AppRoutes.profileInfoPage);
// [Page] 신용카드 등록
Future<dynamic>? goRegisterCreditCard() =>
    Get.toNamed(AppRoutes.registerCreditCard);
// [Page] 카드 관리 페이지
Future<dynamic>? goRegisteredCardList() =>
    Get.toNamed(AppRoutes.registeredCardList);
// [Page] 운전면허증 등록
Future<dynamic>? goRegisterLicense() => Get.toNamed(AppRoutes.registerLicense);
// [Page] 입력/가입 성공 <다시 돌아올 수 없어야..?>
Future<dynamic>? goRegisterSuccess() =>
    Get.offAllNamed(AppRoutes.registerSuccess);
// [Page] 주소 검색/등록
Future<dynamic>? goRegisterZipCode() => Get.toNamed(AppRoutes.registerZipCode);
// [Page] 팀 스케줄 공유
Future<dynamic>? goSharedSchedule() => Get.toNamed(AppRoutes.sharedSchedule);
// [Page] 스플래시 화면
Future<dynamic>? goSplashScreen() => Get.toNamed(AppRoutes.splashScreen);
// [Page] 구독 해지
Future<dynamic>? goUnsubscribeConfirm() =>
    Get.toNamed(AppRoutes.unsubscribeConfirm);
// [Page] 예정된 구독 취소 정보
Future<dynamic>? goUnsubscribeInfo() =>
    Get.toNamed(AppRoutes.upcomingUnsubscription);

// [BottomSheet] 예약 날짜 선택기
Future<dynamic>? goBookDatetimePicker() =>
    Get.bottomSheet(DatetimePickerBottomSheet(),
        ignoreSafeArea: false, isScrollControlled: true);

// [PopupDialog] 예약 확인 페이지
Future<dynamic>? goReservationsCheck(DateTime selectedDay) =>
    Get.dialog(ReservationsCheckingPageDialog(
      selectedDay: selectedDay,
    ));
// [PopupDialog] 팀 초대하기
Future<dynamic>? goSendingInvitation({bool? copyMode}) =>
    Get.dialog(SendingInvitationDialog(copyMode: copyMode ?? false));

// [Page] 소속 된 팀이 없을 경우 보여줄 페이지
Future<dynamic>? goTeamInvitation() => Get.toNamed(AppRoutes.teamInvitation);
