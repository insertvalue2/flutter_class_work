
반응형 Flutter 앱 만들기
Flutter를 사용하면 기기의 화면 크기와 방향에 자동으로 적응하는 앱을 만들 수 있습니다.


반응형 디자인으로 Flutter 앱을 만드는 데에는 두 가지 기본 접근 방식이 있습니다.
- LayoutBuilder클래스 를 사용
- MediaQuery.of()빌드 함수에서 메서드 사용


LayoutBuilder클래스 를 사용
builder속성에서 개체를 얻 습니다 BoxConstraints.
제약 조건의 속성을 검토하여 표시할 항목을 결정합니다.
 예를 들어, maxWidth너비 중단점보다 큰 경우
 Scaffold왼쪽에 목록이 있는 행이 있는 객체를 반환합니다.
 더 좁으면 Scaffold해당 목록이 포함된 서랍이 있는 객체를 반환합니다.
 기기의 높이, 종횡비 또는 기타 속성에 따라 디스플레이를 조정할 수도 있습니다.
 제약 조건이 변경되면(예: 사용자가 전화를 회전하거나 앱을 Nougat의 타일 UI에 배치)
 빌드 기능이 실행됩니다.

MediaQuery.of()빌드 함수에서 메서드 사용
이것은 현재 앱의 크기, 방향 등을 제공합니다.
이것은 특정 위젯의 크기보다는 전체 컨텍스트를 기반으로 결정을 내리려는 경우에 더 유용합니다.
다시 말하지만, 이것을 사용하면 사용자가 어떻게든 앱의 크기를 변경하면 빌드 함수가
자동으로 실행됩니다.



반응형 UI를 만들기 위한 기타 유용한 위젯 및 클래스:

AspectRatio
CustomSingleChildLayout
CustomMultiChildLayout
FittedBox
FractionallySizedBox
LayoutBuilder
MediaQuery
MediaQueryData
OrientationBuilder


기본 문서 주소
https://docs.flutter.dev/development/ui/layout/adaptive-responsive

참고 블로그
https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434