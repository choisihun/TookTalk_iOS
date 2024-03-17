//
//  SignupInterestViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

class SignupInterestViewModel: ObservableObject {
    @Published var phoneNumber: String = ""
    @Published var certificationNumber: String = ""
    @Published var selectedInterest = [String]()
    @Published var noneSelectedInterest = [String]()
    
    let interestsArry = [
        "🍷 와인", "🎊 축제", "🪴 식물 관리", "🎤 코노", "🧘 필라테스",
        "📰 정치", "🙏 종교", "🏋️ 웨이트 트레이닝", "🎬 공연 감상",
        "🎧 노래", "🎶 음악", "🏊 수영", "🎿 겨울 스포츠", "🏕️ 캠핑",
        "🏄 서핑", "🏔️ 등산", "⚾️ 야구", "🏓 탁구",
        "🧗 등반", "🎱 당구", "🏸 배드민턴", "🧘 요가", "🎾 테니스",
        "🏀 농구", "⚽️ 축구", "⛳️ 골프", "🗞️ 시사 이슈", "📝 글쓰기",
        "👯 댄스", "👗 패션", "📚 독서", "🍳 요리",
        "💰 금융", "✈️ 여행", "🤔 자기계발", "🚶 걷기", "🖌️ 그림 그리기",
        "📷 사진 촬영", "🎭 연극", "🎆 전시회 관람", "☕️ 카페 투어",
        "🎹 악기 연주", "🎮 게임", "💻 IT", "🎬 영화",
        "🚲 자전거", "🎞️ 애니메이션", "🏠 인테리어 디자인",
        "🍚 맛집 투어", "🏎️ 드라이브", "🗣️ 외국어/언어 공부"
    ]
    
    
}
