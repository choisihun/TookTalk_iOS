//
//  SignupView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI

struct SignupView: View {
    @StateObject var viewModel = PageViewModel()
    
    var body: some View {
        VStack {
            Image("TookTalk_Signup_Logo")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 37)
            VStack {
                Group {
                    switch viewModel.progress {
                    case 1:
                        SignupPhoneNumberView()
                    case 2:
                        SignupPasswordView()
                    case 3:
                        SignupNicNameView()
                    case 4:
                        SignupInterestView()
                    case 5:
                        SignupMbtiView()
                    case 6:
                        SignupIntroduceView()
                    default:
                        EmptyView()
                    }
                }
                Spacer()
            }
            .frame(width: 290, height: 350, alignment: .center)
            
            PageView(viewModel: viewModel)
                .padding(.bottom, 30)
        }
    }
}

#Preview {
    SignupView()
}
