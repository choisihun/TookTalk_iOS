//
//  CustomSelectInterestButton.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/16/24.
//

import SwiftUI

struct CustomSelectInterestButton: ButtonStyle {
    @StateObject var viewModel = SignupInterestViewModel()
    var idx: String
    let height = CGFloat(45)
    
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(10)
                .contentShape(Rectangle())
                .background(
                    viewModel.selectedInterest.contains(idx) ? .accentColor : viewModel.selectedInterest.contains(idx) ? Color(.systemGray5) : Color(.systemGray3)

                )
                .foregroundColor(Color(UIColor.systemGray5))
                .opacity(configuration.isPressed ? 0.5 : 1.0)
                .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        }
}

