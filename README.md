# Netflix Clone

패스트 캠퍼스에서 진행한 팀 프로젝트 입니다.

Backend팀과의 협업으로 기존 Netflix와 같은 형태의 서비스를 만들어보는 클론 프로젝트 입니다.


## Description

- 개발 기간: 2020.03.20 ~ 2020.04.29 (약 6주)

- 참여 인원: iOS 4명, Backend 2명   [Organization](https://github.com/FC-NETFLEX)

- 사용 기술
  - Language: Swift
  - FrameWork: UIKit, AVFoundation
  - Library: SnapKit, KingFisher

- 담당 구현 파트
  - 프로필 CRUD
  - 더보기 탭 
  
  


## Implementation

### 프로필

![profile](https://user-images.githubusercontent.com/57229970/81154268-b4e9c980-8fbe-11ea-8abd-bf5d7d8a2c18.gif)

- 구현 내용
  - **RESTFull API** 형식을 통해 데이터에서 프로필의 정보를 저장하고 이후 수정, 삭제 구현

  - **UIStackView**를 이용하여 프로필이 홀수일 때와 짝수일 때 위치를 다르게 보여지게 구현
	 _ 이번 프로젝트를 진행하면서 UIStackView를 처음 활용하게 되어서 좋았다, (UIStackView안에 UIStackView를 넣음.) 

  - 서버에 저장된 유저 정보를 활용하여 프로필 뷰를 구성함.

  - 중복된 뷰는 custom view를 활용하여 중복 코드 방지.

  - 프로필 수정 시 프로필 이미지가 다음 뷰와 자연스럽게 연결되는 프레젠트 애니메이션 구현
    _처음에 화면 전환 시의 프로필 이미지 애니메이션을 어떻게 구현해야 할지 막막했는데 UIView Animation을 이용하여 0.3초 동안 다음 화면의 프로필 위치 값으로 이동시킨 뒤 화면 전환을 시킴으로써 최대한 비슷하게 구현하려고 노력했다. 구현 완료 후 넷플리스와 비슷한 것 같아서 제일 맘에 든 부분이기도 했다. 


### 콘텐츠 저장

![more](https://user-images.githubusercontent.com/57229970/81154361-c92dc680-8fbe-11ea-8b92-4ec4b421add9.gif)

- 구현 내용
  - 가로의 **UIStackView**에 생성되어 있는 프로필의 정보를 보여주고, 현재 이용 중인 프로필을 표시
  -  디바이스의 사용 가능한 용량과 사용한 용량, 넷플릭스에서 저장한 콘텐츠의 용량을 Bar chart 형식으로 구현 하였고, 저장된 콘텐츠를 삭제하면 Bar chart에서도 바로 변화 가능
  -  **URL Scheme**을 사용하여 인터넷 속도 측정 사이트, 고객센터 웹페이지로 이동
  -  전체적인 UI를 넷플릭스와 최대한 비슷하게 하는데 초점을 둠
  
  
  

## Design

- 플로우 차트 (AdobeXD) : UI 구성과 앱의 흐름을 파악함

  <img src = "https://github.com/JoongChangYang/Netflix_Clone_iOS/blob/master/assets/FlowChart.png"></img>

  

- 명세서 작성 (Keynote): 앱의 상세 기능과 구조를 파악함

  <img src = "https://github.com/JoongChangYang/Netflix_Clone_iOS/blob/master/assets/blueprint.gif"></img>



## Collaboration

- GitHub

  - Organization에 repository를 만들고 팀원들은 각자 Fork한 repository에 작업 후 pull request를 보내는 방식으로 작업

    <img src = "https://github.com/JoongChangYang/Netflix_Clone_iOS/blob/master/assets/organization.png"></img>

  - project board 를 통한 일정 관리

    <img src = "https://github.com/JoongChangYang/Netflix_Clone_iOS/blob/master/assets/projectboard.png"></img>

  

- Slack: GitHub과의 연동을 통해 issue, pull request등의 실시간 알림

  <img src = "https://github.com/JoongChangYang/Netflix_Clone_iOS/blob/master/assets/slack.png"></img> 
















