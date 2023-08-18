// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 765,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 47,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 22,
                        top: 14,
                        child: Container(
                          width: 54,
                          height: 21,
                          padding: const EdgeInsets.only(top: 1),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 54,
                                height: 20,
                                child: Text(
                                  '9:41',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: FontFamily.pretendard,
                                    fontWeight: FontWeight.w600,
                                    height: 1.31,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 261,
                        top: 19,
                        child: SizedBox(
                          width: 77.40,
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 50,
                                top: 0,
                                child: SizedBox(
                                  width: 27.40,
                                  height: 13,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 1,
                                child: Container(
                                  width: 17,
                                  height: 11.83,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/17x12"),
                                      fit: BoxFit.fill,
                                    ),
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
              Positioned(
                left: 0,
                top: 680,
                child: Container(
                  width: 360,
                  height: 65,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Color(0x33A4A8AF)),
                      top: BorderSide(width: 0.50, color: Color(0x33A4A8AF)),
                      right: BorderSide(color: Color(0x33A4A8AF)),
                      bottom: BorderSide(color: Color(0x33A4A8AF)),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 2,
                                      top: 2,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/20x20"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '일정',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFB9BCC3),
                                  fontSize: 10,
                                  fontFamily: FontFamily.inter,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 2,
                                      top: 2,
                                      child: Container(
                                        width: 20,
                                        height: 19.80,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/20x20"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '채팅',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFB9BCC3),
                                  fontSize: 10,
                                  fontFamily: FontFamily.inter,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 2,
                                      top: 2,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/20x20"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '스마트 키',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 10,
                                  fontFamily: FontFamily.inter,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: Stack(children: [
                                  Container(),
                                ]),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '마이페이지',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFB9BCC3),
                                  fontSize: 10,
                                  fontFamily: FontFamily.inter,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.02,
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
              Positioned(
                left: 0,
                top: 734,
                child: Container(
                  width: 360,
                  height: 31,
                  padding: const EdgeInsets.only(
                    top: 18,
                    left: 113,
                    right: 113,
                    bottom: 8,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 134,
                        height: 5,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 47,
                child: Container(
                  width: 360,
                  height: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(color: Color(0x33A4A8AF)),
                      top: BorderSide(color: Color(0x33A4A8AF)),
                      right: BorderSide(color: Color(0x33A4A8AF)),
                      bottom: BorderSide(width: 0.50, color: Color(0x33A4A8AF)),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 152,
                        height: 19,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 87.67,
                              height: 19,
                              child: Stack(children: [
                                Container(),
                              ]),
                            ),
                            SizedBox(
                              width: 59.56,
                              height: 15,
                              child: Stack(children: [
                                Container(),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 112,
                child: Text(
                  '차량 정보',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w700,
                    height: 1.44,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 346,
                child: Text(
                  '스마트키',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w700,
                    height: 1.44,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 318,
                child: SizedBox(
                  width: 360,
                  height: 8,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        height: 8,
                        decoration:
                            const BoxDecoration(color: Color(0xFFF6F7F7)),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 148,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '차량 명',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                    SizedBox(width: 254),
                    Text(
                      '모닝',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 16,
                top: 177,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '차량번호',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                    SizedBox(width: 197),
                    Text(
                      '12가 3456',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 16,
                top: 206,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '주행거리',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                    SizedBox(width: 224),
                    Text(
                      'xxxkm',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 16,
                top: 235,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '구독',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                    SizedBox(width: 114),
                    Text(
                      '2023.07.01 ~ 2023. 08.01',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                top: 274,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(3.14),
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFFCC08),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '홍길동 사용중',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 132),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(3.14),
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDB4646),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '주유량 : 20%',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: FontFamily.pretendard,
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                            letterSpacing: 0.03,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 62,
                top: 392,
                child: Container(
                  width: 118,
                  height: 119,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFCC08),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 511,
                child: Container(
                  width: 118,
                  height: 119,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 392,
                child: Container(
                  width: 118,
                  height: 119,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 511,
                child: Container(
                  width: 118,
                  height: 119,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                left: 223,
                top: 418,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Container(),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '문잠금',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 12,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 224,
                top: 547,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Container(),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '경적',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 12,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 100,
                top: 549,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Container(),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '사고접수',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 12,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 136,
                top: 465,
                child: Container(
                  width: 86,
                  height: 86,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFB9BCC3)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 481,
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [
                    Container(),
                  ]),
                ),
              ),
              const Positioned(
                left: 163,
                top: 521,
                child: Text(
                  '비상등',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 12,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                    letterSpacing: 0.02,
                  ),
                ),
              ),
              Positioned(
                left: 105,
                top: 418,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Container(),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '문열기',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 12,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.02,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
