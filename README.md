# TodayWidget

<H2>주의점</h2>
<li>프레임워크 만든 후 프로젝트 클린하는 경우 오브젝트C 관련 에러 날때는 스키마에서 프레임워크를 먼저 빌드하면 해결됨
<li>유저디폴트를 위젯과 공유하기 위해서 타겟에서 프로젝트와 위젯의 카파빌리티에서 앱그룹을 동일하게 설정해줘야함
<li>위젯을 클릭해서 해당 앱을 실행시키려면 타겟의 프로젝트에서 URL 타입을 설정 해줘야 함
<li>앱이 포그라운드로 될 때 변경사항 적용은 앱 델리게이트 대신 노티피케이션센터에서 처리했음
<li>위젯 화면에 버튼이나 이미지등이 보이지 않을 경우에는 Assets의 타겟 멤버쉽에 위젯을 추가해준다. (기타 요소들이 위젯 화면에서 보이지 않을 경우에 타겟 멤버쉽 설정을 우선 체크하자)
  <li>그 외 변경사항이 잘 적용이 않되거나 이상할 때는  위젯 설정에서 위젯 삭제 후 다시 add 하면 적용되는 경우가 종종 있음
