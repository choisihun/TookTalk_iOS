//
//  HomeView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/18/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("-만나고 싶은 상대의 성별-")
                .foregroundStyle(.gray)
                .font(.custom(pretendardMedium, size: 15))
                .padding(.bottom, 10)
            SexSwitchView()
                .frame(width: 275, height: 120)
                .padding(.horizontal, 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 0.3)
                        .padding(.horizontal, 65)
                        .padding(.vertical, -10)
                    
                )
        }
    }
}

#Preview {
    HomeView()
}
