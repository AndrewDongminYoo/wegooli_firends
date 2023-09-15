# Flutter Safe Area

![miro.medium.com](https://miro.medium.com/v2/resize:fit:1400/1*EnnFco3P-0QkUeThpLeZFg.jpeg)

[![Murtaza Sulaihi](https://miro.medium.com/v2/resize:fill:88:88/1*y9C4_JJpsekma9O8pW5faw.jpeg)](https://medium.com/@murtazasulaihi?source=post_page-----523287ff69cf--------------------------------)
[![Flutter Community](https://miro.medium.com/v2/resize:fill:48:48/1*nE4OFcqk2kx2-Lzhey8QKA.png)](https://medium.com/flutter-community?source=post_page-----523287ff69cf--------------------------------)

저는 6개월 동안 Flutter 앱을 배우고 개발해 왔습니다. 개발을 시작하면서 위젯을 이해하기 위해 여러 글과 동영상을 찾아보면서 위젯의 전체 그림을 파악하고, 위젯이 하는 일과 위젯의 모든 구성 요소를 이해하려고 노력했습니다.

> 그래서 이번 글은 Flutter 위젯 SafeArea에 대해 처음으로 작성하는 글이며, 저와 같은 다른 개발자들이 웹을 검색하고, 기사를 읽고, 동영상을 보면서 여기저기서 정보를 수집하지 않아도 되도록 모든 구성 요소를 다루려고 노력할 것이며, 솔직히 시간이 많이 걸립니다. 제대로 해보고 싶어요...

요즘 휴대폰에는 수백 가지의 다양한 디자인이 있으며 플러터는 모두를 위해 개발하기 위해 최선을 다하고 있습니다. 화면 크기를 늘리기 위해 휴대폰에는 아이폰 노치, 미디엄 노치, 워터드롭 노치와 같은 노치가 있으며, 개발중인 애플리케이션 SafeArea 위젯은 기본 운영 체제 프로그램의 침입을 피할 수 있도록 충분한 패딩을 제공합니다.

1. **SafeArea 위젯이란 무엇인가요?**

   SafeArea 위젯은 노치로 인해 불필요한 클리핑과 중첩을 방지하여 기본 운영 체제의 침입을 방지하기 위해 기본 레이아웃을 감싸는 데 사용됩니다.

2. **SafeArea 위젯은 어떻게 구현하나요?**

   ```dart
   class SafeAreaWidget extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: SafeArea(
           top: true,
           bottom: true,
           left: true,
           right: true,
           minimum: EdgeInsets.all(16.0),
           maintainBottomViewPadding: true,
           child: Text('The is the safe area widget demo'),
         ),
       );
     }
   }
   ```

   모든 위젯을 SafeArea 위젯으로 감싸면 메인 Scaffold도 SafeArea 위젯으로 감쌀 수 있으며, 특히 아이폰용 디자인 시 운영체제로 인해 상단과 하단 클리핑이 나타나지 않도록 Scaffold를 SafeArea 위젯으로 감싸는 것이 필요합니다.

   기본적으로 _상단, 하단, 좌측, 우측은_ true이며, _최소_ 기본 패딩은 사용자가 직접 값을 추가하여 변경할 수 있습니다. 마지막 속성인 maintainBottomViewPadding(기본값은 false)은 기본적으로 사용자가 소프트 키보드를 통해 입력이 필요한 위젯을 사용할 때 SafeArea이 아래 패딩을 유지하여 아래에 흰색 영역이 표시되고 키보드가 그 위에 위치하여 아래 패딩을 유지한다는 것을 의미합니다.

3. **팁**

이 글을 쓰기 시작할 때 인터넷에 퍼져있는 정보를 조금씩 다룰 것이라고 말했듯이 위젯도 실험 해보고 다음과 같은 결과를 얻었습니다.

1. Scaffold를 SafeArea로 감싸고 배경색을 사용하는 경우 전체 화면이 동일한 색상으로 덮이지 않으며, 아이폰의 경우 상단과 하단이 잘리고 안드로이드 폰의 경우 화면 상단 부분이 잘리고 기본 시스템 색상이 적용됩니다. 따라서 안전 영역 위젯을 사용하는 방법과 위치는 UI에 영향을 미치므로 반드시 확인하세요.

2. Scaffold를 기본 위젯으로 사용하고 있고 Scaffold에 앱바를 추가한 경우 SafeArea 위젯을 사용할 필요가 없습니다. 앱바 위젯이 화면 상단을 관리합니다. 그래도 화면 하단에 있는 위젯으로 세이프 영역을 감싸고 싶을 수 있습니다.
   ![miro.medium.com](https://miro.medium.com/v2/resize:fit:1400/1*AuT0GXEd7j21RI6uXlxYTQ.png)

[https://www.twitter.com/FlutterComm](https://www.twitter.com/FlutterComm)
